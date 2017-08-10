class Item < ApplicationRecord
  belongs_to :seller
  has_one :auction 
end
