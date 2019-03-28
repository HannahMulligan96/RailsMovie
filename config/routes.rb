Rails.application.routes.draw do  
  resources :us
  get 'users/show'
  devise_for :users

  resources :movies do #setting movies to be the roeot of the app
    resources :reviews, except: [:show, :index]
      resources :users
        resources :searches
  end

  root 'movies#index'
end