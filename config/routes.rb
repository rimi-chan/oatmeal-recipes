Rails.application.routes.draw do
  
get "search" => "searches#search"

devise_for :users, controllers: {
  registrations: 'users/registrations'
}

resources :users, only: [:index, :show, :edit, :update]
resources :home, only: [:index]
resources :oats, only: [:index, :new, :create, :show, :search, :edit, :update, :destroy]
resources :powders, only: [:index, :new, :create, :show, :search, :edit, :update, :destroy]
delete 'oats/:id' => 'oats#destroy'
root to: "home#index"

devise_scope :user do
  post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  get '/users/sign_out' => 'devise/sessions#destroy'
end
end
