Rails.application.routes.draw do
  resources :memberships, only: [:index, :create]
  resources :gyms, only: [:show, :destroy]
  resources :clients, only: :show
end
