class AuthController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      payload = { user_id: user.id }
      my_secret = '7d3b6a554654709543da3010ee931cd9c13baf6eae30186b1dcc4bcde95dc0211a75429c76cb14ba85c4e6d2ad7d6de28645830857fcd493b079b60d2397cbdb'
      token = JWT.encode(payload, my_secret, 'HS256')
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
    my_secret = '7d3b6a554654709543da3010ee931cd9c13baf6eae30186b1dcc4bcde95dc0211a75429c76cb14ba85c4e6d2ad7d6de28645830857fcd493b079b60d2397cbdb'
    decoded_token = JWT.decode token, my_secret, true, { algorithm: 'HS256' }
    user_id = decoded_token[0]['user_id']
    user = User.find_by(id: user_id)
    if user
      render json: { user: user, favorites: user.favorites, favorited_posts: user.favorited_posts, token: token }
    else
      render json: { error: 'invalid Token' }, status: 401
    end
  end
end
