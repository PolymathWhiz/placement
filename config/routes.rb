Rails.application.routes.draw do
  root 'home#index'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_for :employers, controllers: {
    sessions: 'employers/sessions',
    registrations: 'employers/registrations'
  }

  devise_scope :users do
    resources :users, only: [:show]
  end
end
