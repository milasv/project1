Rails.application.routes.draw do
  root :to => 'home#index'
  resources :regions
  resources :varieties
  resources :wineries
end
