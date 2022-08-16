Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users, only: [:index , :create]
  # resources :jobPosts, only: [:index , :create]
  post '/user/registration', to: 'users#create'
  get '/user/index', to: 'users#index'
  post '/auth/login', to: 'authentication#login'
  post '/posts/create', to: 'posts#create'
  get '/posts/index', to: 'posts#index'
  get '/jobs/index', to: 'jobs#index'
  post '/jobs/create', to: 'jobs#create'
end
