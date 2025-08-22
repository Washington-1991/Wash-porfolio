class CreateClientAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :client_accounts do |t|
      t.string :name, null: false
      t.string :billing_email, null: false
      t.string :country_code
      t.string :preferred_locale
      t.string :time_zone
      t.string :slug

      # Relación con User (el owner de la cuenta)
      t.references :owner, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
