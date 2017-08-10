class Bid < ApplicationRecord
  belongs_to :collector
  belongs_to :auction
end
