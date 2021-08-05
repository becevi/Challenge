class CreateManifests < ActiveRecord::Migration[6.1]
  def change
    create_table :manifests, id: false do |t|
      t.integer :quantity
      t.references :order, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
