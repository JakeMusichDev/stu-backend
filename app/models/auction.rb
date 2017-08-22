class Auction < ApplicationRecord
  belongs_to :user, required: true
  has_many :bids
  has_many :users, :through => :bids
end
