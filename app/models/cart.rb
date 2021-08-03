class Cart < ApplicationRecord
  belongs_to :buyer
  has_many :items
end
