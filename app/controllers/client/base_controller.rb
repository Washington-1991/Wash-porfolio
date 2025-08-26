# app/controllers/client/base_controller.rb
class Client::BaseController < ApplicationController
  before_action :authenticate_user!   # obliga login en todo el espacio cliente

  private

  # Devuelve la cuenta cliente asociada al usuario conectado
  def current_client_account
    current_user&.owned_client_account
  end
  helper_method :current_client_account
end
