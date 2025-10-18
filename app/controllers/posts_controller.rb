class PostsController < ApplicationController
  def index
    posts = Post.all.order('created_at DESC')
    render json: posts
  end

  def show
    post = Post.find_by(id: params[:id])
    render json: post
  end

  def create
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
    post = Post.find_by(id: params[:id])
    post.destroy
    render json: post
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      render json: post
    else
      Rails.logger.error "Post update failed: #{post.errors.full_messages}"
      render json: { errors: post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:performance_type, :voice_type, :date, :time, :venue_name, :street_address,
                                 :address_line_two, :city, :state, :zip, :repertoire, :notes, :contact_first_name,
                                 :contact_last_name, :contact_email, :user_honorific, :paid)
  end
end
