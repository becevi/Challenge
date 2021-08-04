class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :cart
      t.references :book
      t.decimal :quantity

      t.timestamps
    end
  end
end
