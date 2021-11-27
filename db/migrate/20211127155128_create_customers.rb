class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :status
      t.date :date
      t.text :message
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
