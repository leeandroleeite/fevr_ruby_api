Rails.application.routes.draw do

  namespace :api do
    resources :players do
      resources :notifications
    end
  end
  
end
