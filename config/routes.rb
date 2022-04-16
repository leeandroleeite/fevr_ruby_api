Rails.application.routes.draw do
  
  namespace :api do
    resources :admins, only: [:create]

    resources :users, only: [:create]

    resources :sessions, only: [:create]
    resources :registrations, only: [:create]
    delete :logout, to: "sessions#logout"
    get :logged_in, to: "sessions#logged_in"

    root to: "statics#home"
    
    resources :players do
      resources :notifications
    end
  end
end
