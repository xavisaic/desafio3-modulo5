Rails.application.routes.draw do
  resources :movies, only: [:index, :new, :create]
  resources :series, only: [:index, :new, :create]
  resources :documentary_films, only: [:index, :new, :create]


  get 'documentaryfilms/index'
  post 'documentaryfilms/create'
  get 'documentaryfilms/new'
  get 'series/index'
  post 'series/create'
  get 'series/new'
  get 'movies/index'
  post 'movies/create'
  get 'movies/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
