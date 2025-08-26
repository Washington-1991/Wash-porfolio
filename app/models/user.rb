class User < ApplicationRecord
  # Devise: autenticación básica
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Roles (admin/client) usando enum con valores string
  enum role: { admin: "admin", client: "client" }

  # Relación con la cuenta de cliente (owner)
  has_one :owned_client_account,
          class_name: "ClientAccount",
          foreign_key: :owner_id,
          dependent: :nullify

  # Conveniencia para mostrar nombre
  def display_name
    name.present? ? name : email
  end
end
