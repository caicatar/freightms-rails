Rails.application.routes.draw do
  devise_for :fms_g16_users
  resources :fms_g16_shipments do
    post 'assign_load', on: :member
    post 'unload_load', on: :member
  end
  resources :fms_g16_routes
  resources :fms_g16_loads do
    post 'assign_order', on: :member
    post 'unload_order', on: :member
  end
  # devise_for :users, controllers: {
  #   registrations: 'users/registrations',
  #   sessions: 'users/sessions'
  # }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "dashboard#index"

  # Dashboards
  get "dashboard", to: "dashboard#index", as: "dashboard_page"
  get "dashboard_shipments", to: "dashboard#shipments", as: "dashboard_shipments_page"
  get "dashboard_loads", to: "dashboard#loads", as: "dashboard_loads_page"
  get "dashboard_routes", to: "dashboard#routes", as: "dashboard_routes_page"

  devise_scope :fms_g16_user do
    get "admin" => "devise/sessions#new", as: "login"
    get "logout" => "devise/sessions#destroy", as: "destroy"
  end


end
