class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :medium, :provenance, :dimensions, :reserve, :user_id
  belongs_to :user
end
