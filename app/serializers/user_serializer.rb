class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :voice_type, :biography, :degree, :institution, :website, :resume, :headshot, :video, :honorific, :pronouns

  has_many :posts

  has_many :favorites

  has_many :favorited_posts, through: :favorites, source: :post

  include Rails.application.routes.url_helpers

  # def headshot
  #     rails_blob_path(object.headshot, only_path: true) if object.headshot.attached?
  # end

  # def resume
  #   rails_blob_path(object.resume, only_path: true) if object.resume.attached?
  # end
end
