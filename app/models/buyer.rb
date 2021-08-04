class Buyer < ApplicationRecord
    has_many :orders
    has_many :carts
end
