class AuctionsSerializer < ActiveModel::Serializer
  attributes :start_date, :end_date, :reserve, :selling_price, :winning_bid
  has_one :item
  has_one :seller, through: :item
  has_many :bids
  has_many :collectors, through: :bids
end
