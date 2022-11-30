# frozen_string_literal: true
class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: :create
  prepend_before_action :require_no_authentication, only: :cancel
  prepend_before_action :authenticate_scope!, only: %i[new create]
  prepend_before_action :set_minimum_password_length, only: :new
  
  def new
    super
  end

  def create
    build_resource(sign_up_params)
    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :success, :signed_up
        sign_up(resource_name, current_user)

        self.resource = resource_class.send_reset_password_instructions(resource_params)

        redirect_to admins_path
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end
end
