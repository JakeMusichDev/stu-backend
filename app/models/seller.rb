class Seller < ApplicationRecord
  has_many :auctions
  has_secure_password
end
