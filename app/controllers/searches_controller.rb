class SearchesController < ApplicationController
  before_action :authenticate_user!, except: [:search]

  def search
    @oats = Oat.looks(params[:search], params[:word])
    @powders = Powder.looks(params[:search], params[:word])
  end
end
