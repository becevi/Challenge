class Order < ApplicationRecord
  belongs_to :user
  belongs_to :book
  has_many :manifests
  has_many :books, through: :manifests
end
