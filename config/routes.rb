Rails.application.routes.draw do

resources :users, only: [:index, :show, :edit, :update]
resources :home, only: [:index]
resources :oats, only: [:index, :new, :create, :show, :search, :edit, :update, :destroy]
resources :powders, only: [:index, :new, :create, :show, :search, :edit, :update, :destroy]

root to: "home#index"

devise_for :users

end
