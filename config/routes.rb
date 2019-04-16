Rails.application.routes.draw do

  resources :authors, only: [:show]

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  # get 'authors/:id/posts', to: 'authors#posts_index'
  # get 'authors/:id/posts/:post_id', to: 'authors#post'

  resources :authors, only: [:show] do
   # nested resource for posts
   resources :posts, only: [:show, :index]
 end

  root 'posts#index'
end
