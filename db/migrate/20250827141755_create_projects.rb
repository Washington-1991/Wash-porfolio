class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string  :title,  null: false
      t.string  :status, null: false, default: "draft"
      t.date    :due_on
      t.text    :summary
      t.references :client_account, null: false, foreign_key: true

      t.timestamps
    end

    add_index :projects, :status
  end
end
