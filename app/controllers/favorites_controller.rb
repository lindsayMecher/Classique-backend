class FavoritesController < ApplicationController
  def create
    favorite = Favorite.create(user_id: params[:user_id], post_id: params[:post_id])
    render json: favorite
  end

  def index
    favorites = Favorite.all
    render json: favorites
  end

  def show
    favorite = Favorite.find_by(id: params[:id])
    render json: favorite
  end 

  def destroy
    favorite = Favorite.find_by(id: params[:id])
    favorite.destroy
    render json: favorite
  end
end
