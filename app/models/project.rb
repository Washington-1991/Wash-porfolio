class Project < ApplicationRecord
  belongs_to :client_account

  enum status: {
    draft: "draft",
    backend_db_creation: "backend_db_creation",
    back_routing: "back_routing",
    front_visual: "front_visual",
    waiting_client_confirmation: "waiting_client_confirmation",
    online: "online",
    offline: "offline"
  }

  validates :title, presence: true
  validates :status, inclusion: { in: statuses.keys }
end
