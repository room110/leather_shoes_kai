Rails.application.routes.draw do

  devise_for :admins, :controllers => {
    :sessions => 'admins/sessions'
  }
  devise_for :users,
    controllers: {
      sessions: 'users/sessions',
      registrations: "users/registrations",
      omniauth_callbacks: 'users/omniauth_callbacks'
  }

  root to: 'homes#top'
  get 'about' => 'homes#about'
  get 'inquirys/new'
  get 'inquirys/create'
  post 'inquirys/create' => 'inquirys#create'
  get 'search' => 'searches#search'
  get 'shoes/choose' => 'shoes#choose'
  get 'shoes/recommend' => 'shoes#recommend'
  get 'shoes/care' => 'shoes#care'

  namespace :admins do
  resources :brands
  resources :sizes
  resources :types
  end

  resources :users do
    member do
         get :follow
         get :follower
    end
  end


  resources :users
  get 'users/:id/new' => 'users#new', as: 'new_user_post'
  resources :user_relationships, only: [:create, :destroy]

  resources :shoes do
    resource :favorites, only: [:create, :destroy]
    resources :shoe_images
    resources :shoe_comments, only: [:create, :destroy]
  end

end
