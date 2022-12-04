class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image
end
