Rails.application.routes.draw do
  resources 'organisations'

  root 'organisations#index'
end
