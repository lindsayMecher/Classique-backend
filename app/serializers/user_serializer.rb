class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password_digest, :voice_type, :biography, :degree, :institution, :website

  has_many :posts

  has_many :favorited_posts, through: :favorites, source: :post
end
