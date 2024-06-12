Rails.application.routes.draw do
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

  get "home_light" => "home_light#home_light"


  get "home_esp" => "spanish#home_esp"
  get "aboutme_esp" => "spanish#aboutme_esp"
  get "projects_esp" => "spanish#projects_esp"
  get "contact_esp" => "spanish#contact_esp"

  get "home_por" => "portuguese#home_por"
  get "aboutme_por" => "portuguese#aboutme_por"
  get "projects_por" => "portuguese#projects_por"
  get "contact_por" => "portuguese#contact_por"

  get "home_fra" => "french#home_fra"
  get "aboutme_fra" => "french#aboutme_fra"
  get "projects_fra" => "french#projects_fra"
  get "contact_fra" => "french#contact_fra"
  # Defines the root path route ("/")
  # root "posts#index"
end
