Rails.application.routes.draw do
  root 'home#index'
  devise_for :users

  devise_scope :users do
    resources :users, only: [:show]
  end
end
