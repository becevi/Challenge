class CreateSellerBook < ActiveRecord::Migration[6.1]
  def change
    create_table :seller_books, id: false do |t|
      t.belongs_to :seller
      t.belongs_to :book
      t.timestamps
    end
  end
end
