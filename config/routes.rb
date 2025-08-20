Rails.application.routes.draw do
  devise_for :users
  get 'pages_light/index'
  get 'home_light/index'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "home" => "pages#home"
  get "aboutme" => "pages#aboutme"
  get "projects" => "pages#projects"
  get "contact" => "pages#contact"
  get "blank" => "pages#blank"
  get "home_esp" => "pages#home_esp"
  get "home_fra" => "pages#home_fra"
  get "home_por" => "pages#home_por"

  # Defines the root path route ("/")
  # root "posts#index"
end
