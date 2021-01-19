Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show] do
    # nested resource for posts_index
    # /authors/:author_id/posts
    # /authors/:author_id/posts/:id
    resources :posts, only: [:show, :index]

  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

end
