class UsersSerializer < ActiveModel::Serializer
  attributes :name, :email, :password
  has_many :bids
  has_many :auctions
end
