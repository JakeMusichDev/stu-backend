class BidSerializer < ActiveModel::Serializer
  attributes :id, :collector_id, :auction_id, :bid_price
  belongs_to :collector
  belongs_to :auction
end
