class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre_id, :format
  has_many :authors
end
