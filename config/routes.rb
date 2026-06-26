Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :player do
    resources :character, only: [ :index, :show, :create ]
    resources :table, only: [ :index ]
  end

  resources :table do
    resources :character, only: [ :index, :show ]
    resources :player, only: [ :index ]
  end

  resources :character
end
