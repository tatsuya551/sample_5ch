Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :home, only: [:index]
  resources :boards, only: [:new, :create, :index, :show]
end
