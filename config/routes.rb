Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show] do #Now we have the resourced :authors route, but by adding the do...end
    # we can pass it a block of its nested routes.
    # nested rasource for posts
    resources :posts, only: [:show, :index] #we only want to nest :show and :index under :authors.
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'
end
