class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :medium, :provenance, :dimensions
  belongs_to :seller
end
