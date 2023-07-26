class Book < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :authors
  belongs_to :genre
  has_many :notes
  validates :title, presence: true

  scope :order_by_genre, -> { book.joins(:genre).order("genres.name") }
  scope :order_by_title, -> { book.order("title") }
  scope :order_by_author, -> { book.joins(:author).order("authors.first_name") }
end
