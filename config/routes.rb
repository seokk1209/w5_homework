Rails.application.routes.draw do
  root "posts#index"
  resources :posts

  # resources :posts
  
  # post 'posts/create' =>'post#create', as:'posts'

  # get 'posts/new'

  # get 'posts/index'

  # get 'posts/show/:post_id' => 'posts#show'

  # patch 'posts/update/:post_id' => 'posts#update', as: 'post'

  # get 'posts/edit/:post_id' => 'posts#edit'

  # get 'posts/destroy/:post_id' => 'posts#destroy'

  
end
