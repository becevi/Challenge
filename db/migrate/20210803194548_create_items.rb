class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
