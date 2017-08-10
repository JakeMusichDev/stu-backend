class Seller < ApplicationRecord
  has_many :items
  has_many :auctions, through: :items
  has_secure_password
end
