class Collector < ApplicationRecord
  has_many :bids
  has_many :auctions, through: :bids
  has_secure_password 
end
