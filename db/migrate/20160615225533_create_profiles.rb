class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :address
      t.string :city
      t.string :province
      t.string :phone_number
      t.string :bank_name
      t.string :account_name
      t.string :account_number
      t.references :user, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
