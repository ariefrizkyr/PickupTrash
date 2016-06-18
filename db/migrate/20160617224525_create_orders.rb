class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :address
      t.text :direction
      t.string :phone_number
      t.boolean :status
      t.integer :price
      t.decimal :weight
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
