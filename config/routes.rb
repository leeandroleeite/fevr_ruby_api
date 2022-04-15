Rails.application.routes.draw do
  
  namespace :api do
    resources :sessions, only: [:create]
    resources :registrations, only: [:create]
    root to: "statics#home"
    resources :players do
      resources :notifications
    end
  end
end
