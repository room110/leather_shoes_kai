Rails.application.routes.draw do
  get 'inquirys/new'
  get 'inquirys/create'
  post 'inquirys/create' => 'inquirys#create'
  devise_for :admins
  devise_for :users

  root to: 'homes#top'
  get 'about' => 'homes#about'

  resources :users
  resources :brands
  resources :sizes
  resources :types

  resources :shoes do
    resource :favorites, only: [:create, :destroy]
    resources :shoe_images
    resources :shoe_comments, only: [:create, :destroy]
  end

end
