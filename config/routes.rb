Rails.application.routes.draw do
  
get "search" => "searches#search"

devise_for :users
resources :users, only: [:index, :show, :edit, :update]
resources :home, only: [:index]
resources :oats, only: [:index, :new, :create, :show, :search, :edit, :update, :destroy]
resources :powders, only: [:index, :new, :create, :show, :search, :edit, :update, :destroy]

root to: "home#index"

devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
end
