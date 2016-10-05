Rails.application.routes.draw do
  resources :leagues
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks',
                                    registrations: 'registrations' }

  resources :users do
    get 'new_account', on: :member
    get :show, on: :member
  end

  resources :teams do
    resources :posts, only: [:show, :index]
  end

  resources :posts, only: [:new, :create]

  root to: 'pages#main'

  namespace :admin do
    resources :posts
  end

end
