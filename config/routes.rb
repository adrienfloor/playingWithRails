Rails.application.routes.draw do

  get 'categories/index'

  get 'categories/show'

  get 'categories/new'

  get 'categories/create'

  get 'categories/edit'

  get 'categories/update'

  get 'categories/destroy'

root to: 'pages#home'
get '/salut(/:name)', to: 'pages#salut', as:'salut'
resources :posts
resources :categories
resources :pizzas
end
