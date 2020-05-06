class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

  def create
    p params
    user = User.create(honorific: params[:honorific], first_name: params[:first_name], last_name: params[:last_name], voice_type: params[:voice_type], email: params[:email], password: params[:password], pronouns: params[:pronouns])
    p user
    render json: user
  end

  def update
    p params
    user = User.find_by(id: params[:id])
    user.update(first_name: params[:first_name], last_name: params[:last_name], degree: params[:degree], institution: params[:institution], voice_type: params[:voice_type], biography: params[:biography], website: params[:website], pronouns: params[:pronouns])
    render json: user
  end

  # def headshot
  #   user = User.find_by(id: params[:id])
  #   # user.headshot.attach(params[:headshot])
  #   #
  #   user.headshot.attach(params[:headshot])
  #   user.resume.attach(params[:resume])
  #   if user&.headshot&.attached?
  #     redirect_to rails_blob_url(user.headshot)
  #   else
  #     head :not_found
  #   end
  # end

end
