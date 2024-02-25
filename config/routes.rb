Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :orders
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "dashboard#index"

  # Dashboards
  get "dashboard", to: "dashboard#index", as: "dashboard_page"
  get "dashboard_orders", to: "dashboard#orders", as: "dashboard_order_page"



  devise_scope :user do
    get "admin" => "users/sessions#new"
    get "logout" => "users/sessions#destroy", as: "destroy"
  end

end
