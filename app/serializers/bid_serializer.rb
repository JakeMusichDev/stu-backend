class BidSerializer < ActiveModel::Serializer
  attributes :user_id, :auction_id, :bid_price
  belongs_to :user
  belongs_to :auction
end
