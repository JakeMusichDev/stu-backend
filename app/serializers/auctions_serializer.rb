class AuctionsSerializer < ActiveModel::Serializer
  attributes :lot_title, :lot_description, :lot_year, :lot_medium, :lot_dimensions, :start_date, :end_date, :reserve, :selling_price, :winning_bid
  has_one :seller
  has_many :bids
  has_many :collectors, through: :bids
end
