Rails.application.routes.draw do
  resources :devices
  resources :groups
  get 'home/index'

  devise_ios_rails_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }
  root to: "home#index"
  resources :pets
  resources :foods
  resources :meal_logs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
