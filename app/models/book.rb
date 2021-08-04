class Book < ApplicationRecord
    has_and_belongs_to_many :sellers
    has_many :orders
    has_many :items
end
