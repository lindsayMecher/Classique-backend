class AuthController < ApplicationController
  def jwt_key
    ENV['SESSION_SECRET']
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      payload = { user_id: user.id }
      token = JWT.encode(payload, jwt_key, 'HS256')
      render json: { user: user, favorites: user.favorites, favorited_posts: user.favorited_posts, token: token }
      # render json: { user, include: [:favorite, :favorited_post], except: [:updated_at]} , token: token
    else
      render json: { error: 'invalid credentials' }, status: 401
    end
  end

  def show
    # parse the headers to collect the TOKEN, decode the token,
    # then grab the user from db, then send the user to the front end
    auth = request.headers[:Authorization]
    token = auth.split(' ')[1]
    decoded_token = JWT.decode token, jwt_key, true, { algorithm: 'HS256' }
    user_id = decoded_token[0]['user_id']
    user = User.find_by(id: user_id)
    if user
      render json: { user: user, favorites: user.favorites, favorited_posts: user.favorited_posts, token: token }
    else
      render json: { error: 'invalid Token' }, status: 401
    end
  end
end
