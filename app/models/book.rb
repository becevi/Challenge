class Book < ApplicationRecord
    belongs_to :admin
    has_many :orders
    has_many :users, through: :orders
    
end
