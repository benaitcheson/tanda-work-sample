Rails.application.routes.draw do
  root "organisations#index"

  resources :organisations
end
