class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :voice_type, presence: true

  has_many :posts
  has_many :favorites
  has_many :favorited_posts, through: :favorites, source: :post

end
