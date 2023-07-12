class User < ApplicationRecord
  has_many :books
  has_many :notes, through: :books
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
