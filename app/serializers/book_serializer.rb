class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre_id, :format, :authors
end
