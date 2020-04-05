class User < ApplicationRecord
  # has_secure_password

  validates :email, presence: true, uniqueness: true

  has_many :posts
  has_many :favorites
  has_many :favorited_posts, through: :favorites, source: :post

end
