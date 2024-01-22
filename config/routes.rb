Rails.application.routes.draw do
  resources :user_groups
  resources :reading_missions
  resources :plans
  resources :profiles
  resources :reading_times
  resources :groups do
    member do
      get :books
      get :members
      get :invitation_requests
      get :join_requests
    end
  end
  resources :books do
    member do
      post :generate_mission
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'home/index'

  default_url_options :host => "localhost:3000"

  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    unlocks: 'users/unlocks'
  }

  # Defines the root path route ("/")
  root "home#index"
end
