class SellersSerializer < ActiveModel::Serializer
  attributes :name, :email, :password
  has_many :auctions
end
