class AddFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :role, :string, default: "client"
    add_column :users, :locale, :string
    add_column :users, :time_zone, :string

    # Asegurar índice para consultas por rol
    add_index  :users, :role

    # Si ya hay usuarios en la tabla, rellenar nulos y forzar NOT NULL
    reversible do |dir|
      dir.up do
        execute "UPDATE users SET role = 'client' WHERE role IS NULL"
        change_column_null :users, :role, false
      end
    end
  end
end
