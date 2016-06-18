class CreateWithdraws < ActiveRecord::Migration
  def change
    create_table :withdraws do |t|
      t.integer :amount
      t.boolean :status
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
