Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'

  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :posts do
      resources :comments
    end
  end
  
