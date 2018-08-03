Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  root 'posts#index'

  get  'posts',     to: 'posts#index'
  get  'posts/new'
  post 'posts',     to: 'posts#create'
  get  'posts/:id', to: 'posts#show', as: 'posts_show'
  post 'posts/:id/comments', to: 'comments#create', as: 'comments'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  'users/:username', to: 'users#show', as: 'profile'

end