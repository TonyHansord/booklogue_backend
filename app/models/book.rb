class Book < ApplicationRecord
  has_many :users
  has_many :notes
end
