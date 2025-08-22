class ClientAccount < ApplicationRecord
  belongs_to :owner, class_name: "User", optional: true

  validates :name, :billing_email, presence: true
  validates :billing_email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
