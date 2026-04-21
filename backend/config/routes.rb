Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    resources :developers, only: [:index, :show, :create, :update, :destroy]
    resources :games, only: [:index, :show, :create, :update, :destroy]
    resources :characters, only: [:index, :show, :create, :update, :destroy]
    resources :character_infos, only: [:index, :show, :create, :update, :destroy]
  end
end
