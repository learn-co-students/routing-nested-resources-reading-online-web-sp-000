Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show]

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'
  get 'authors/:id/posts', to: 'authors#posts_index'    # we need explicitly tell them where to route to
  get 'authors/:id/posts/:post_id', to: 'authors#posts' # it causes an error.
end
