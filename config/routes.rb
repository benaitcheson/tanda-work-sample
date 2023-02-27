Rails.application.routes.draw do
  devise_for :users
  root 'organisations#index'

  resources :organisations do
    resources :users
  end
end
