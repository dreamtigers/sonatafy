Rails.application.routes.draw do
  require 'sidekiq/web'
  require 'sidekiq/cron/web'

  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :dealerships
  resources :cars, path: :inventory
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'cars#index'
end
