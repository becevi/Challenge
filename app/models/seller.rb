class Seller < ApplicationRecord
    has_and_belongs_to_many :books
    has_many :items, through: :books
end
