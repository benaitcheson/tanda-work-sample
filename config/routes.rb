Rails.application.routes.draw do
  root 'organisations#index'

  devise_for :users

  resources :organisations do
    resources :users
  end
end
