Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :home, only: [:index]
  resources :boards, only: %i[new create index show] do
    resources :responses, only: [:create]
    collection do
      get 'search'
    end
  end
end
