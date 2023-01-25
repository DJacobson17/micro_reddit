class User < ApplicationRecord
  validates :username, presence: true, length: { in: 4..12 }, uniqueness: true
  validates :email, uniqueness: true, presence: true
  validates :password, length: { in: 8..14 }, presence: true
  has_many :posts
  has_many :comments
end
