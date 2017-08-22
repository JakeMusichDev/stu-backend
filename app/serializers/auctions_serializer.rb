class AuctionsSerializer < ActiveModel::Serializer
  attributes :lot_title, :lot_description, :lot_year, :lot_medium, :lot_dimensions, :start_date, :end_date, :reserve, :selling_price, :winning_bid
  belongs_to :user
  has_many :bids
  has_many :bidders, :through => :bids
end
