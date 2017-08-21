class Auction < ApplicationRecord
  has_one :seller
  has_many :bids
  has_many :collectors, through: :bids
end
