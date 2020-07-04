Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :posts do
    resources :comments, only: [:create]
  end

  resources :timers,only: [:index]
end
