Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # get 'authors/:id/posts', to: 'authors#posts_index'    # we need explicitly tell them where
  # get 'authors/:id/posts/:post_id', to: 'authors#posts' # to route to it causes an error.
  # Now I am recreating the routes as nested resources
  resources :authors, only: [:show] do 
    resources :posts, only: [:show, :index]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

end
