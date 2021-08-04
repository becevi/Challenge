class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user
      t.references :book
      t.decimal :amount
      t.string :status

      t.timestamps
    end
  end
end
