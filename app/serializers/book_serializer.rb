class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author_id, :genre_id, :format
end
