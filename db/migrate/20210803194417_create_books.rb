class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.text :description
      t.decimal :price
      t.integer :stock
      t.references :admin
      t.timestamps
    end
  end
end
