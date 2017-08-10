class Auction < ApplicationRecord
  has_one :item
  has_one :seller, through: :item
  has_many :bids
  has_many :collectors, through: :bids
end
