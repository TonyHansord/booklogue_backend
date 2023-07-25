class BookSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :genre, serializer: GenreSerializer
  has_many :authors
end
