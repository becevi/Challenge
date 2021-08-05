class Book < ApplicationRecord
    belongs_to :admin
    has_many :manifests
    has_many :carts
    has_many :orders

end
