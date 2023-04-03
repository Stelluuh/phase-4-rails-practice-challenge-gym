Rails.application.routes.draw do
  resources :memberships, only: [:index, :create]
  resources :gyms, only: [:index, :show, :update, :destroy]
  resources :clients, only: [:show, :index, :update]
end
