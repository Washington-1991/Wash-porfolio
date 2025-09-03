# config/routes.rb
Rails.application.routes.draw do
  # Autenticación
  devise_for :users

  # Páginas públicas
  root to: "pages#home"
  get "up",       to: "rails/health#show", as: :rails_health_check
  get "home",     to: "pages#home"
  get "aboutme",  to: "pages#aboutme"
  get "projects", to: "pages#projects"
  get "contact",  to: "pages#contact"
  get "blank",    to: "pages#blank"
  get "home_esp", to: "pages#home_esp"
  get "home_fra", to: "pages#home_fra"
  get "home_por", to: "pages#home_por"

  # Área Admin (protegida por Admin::BaseController)
  namespace :admin do
    root to: "dashboard#show"
    resources :client_accounts
    resources :projects
  end

  # Área Cliente (protegida por Client::BaseController)
  namespace :client do
    root to: "dashboard#show"
    resource  :account, only: :show    # /client/account
    resources :projects, only: [:index, :show]
  end
end
