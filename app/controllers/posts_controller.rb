class PostsController < ApplicationController

  def index
    posts = Post.all.order("created_at DESC")
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
      address_line_two: params[:address_line_two],
      city: params[:city],
      state: params[:state],
      zip: params[:zip],
      repertoire: params[:repertoire],
      notes: params[:notes],
      contact_first_name: params[:contact_first_name],
      contact_last_name: params[:contact_last_name],
      contact_email: params[:contact_email],
      user_honorific: params[:user_honorific],
      paid: params[:paid],
      user_id: params[:user_id]
    )
    render json: post
  end

  def destroy
    p params
    post = Post.find_by(id: params[:id])
    post.destroy
    render json: post 
  end

  def update
    p params[:id].to_i
    
    post = Post.find_by(id: params[:id].to_i)
    p post.user_id
    p post.id
    post.update(
      performance_type: params[:performance_type],
      voice_type: params[:voice_type],
      date: params[:date],
      time: params[:time],
      venue_name: params[:venue_name],
      street_address: params[:street_address],
      address_line_two: params[:address_line_two],
      city: params[:city],
      state: params[:state],
      zip: params[:zip],
      repertoire: params[:repertoire],
      notes: params[:notes],
      contact_first_name: params[:contact_first_name],
      contact_last_name: params[:contact_last_name],
      contact_email: params[:contact_email],
      user_honorific: params[:user_honorific],
      paid: params[:paid]
    )
    render json: post
  end

end
