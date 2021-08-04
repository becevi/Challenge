class CreateBuyers < ActiveRecord::Migration[6.1]
  def change
    create_table :buyers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :password
      t.decimal :balance

      t.timestamps
    end
  end
end
