class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :buyer, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.decimal :amount
      t.string :status

      t.timestamps
    end
  end
end
