Rails.application.routes.draw do
  root to: 'lists#index'

  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:index, :new, :create]
  end
    resources :bookmarks, only: :destroy
end

  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new', as: 'new'
  # get 'lists/:id', to: 'lists#show'
  # post 'lists', to: 'lists#create'

  # get 'lists/:id/bookmarks', to: 'bookmarks#index'
  # get 'lists/:id/bookmarks/new' to: 'bookmarks#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
