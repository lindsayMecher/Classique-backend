class PostsController < ApplicationController

  def index
    posts = Post.all
    render json: posts
  end

  def show
    post = Post.find_by(id: params[:id])
    render json: post
  end

  def create
    p params
    post = Post.create(
      performance_type: params[:performance_type],
      voice_type: params[:voice_type],
      date: params[:date],
      time: params[:time],
      venue_name: params[:venue_name],
      street_address: params[:street_address],
      city: params[:city],
      state: params[:state],
      zip: params[:zip],
      repertoire: params[:repertoire],
      notes: params[:notes],
      contact_first_name: params[:contact_first_name],
      contact_last_name: params[:contact_last_name],
      contact_email: params[:contact_email],
      paid: params[:paid],
      user_id: params[:user_id]
    )
    render json: post
  end

end
