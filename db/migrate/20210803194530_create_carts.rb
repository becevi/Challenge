class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer  :quantity
      t.references :book
      t.references :user

      t.timestamps
    end
  end
end
