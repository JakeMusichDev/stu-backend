class User < ApplicationRecord
  has_many :bids, :foreign_key => "owner_id"
  has_many :auctions, :foreign_key => "owner_id"
  has_secure_password
end
