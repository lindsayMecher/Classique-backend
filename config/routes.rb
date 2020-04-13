Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :create, :update, :destroy] do
      get :headshot, :resume, on: :member
      post :headshot, :resume, on: :member
      patch :headshot, :resume, on: :member
    end

  resources :posts, only: [:index, :show, :create, :update, :destroy]
  resources :favorites, only: [:index, :show, :create, :destroy]

  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'

end
