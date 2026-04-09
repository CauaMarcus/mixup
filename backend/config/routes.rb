Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  namespace :api do
    resources :developers, only: [:new, edit]
    resources :games, only: [:new, :edit]
  end
end
