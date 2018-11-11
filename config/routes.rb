Rails.application.routes.draw do
  root 'cocktails#index'
  post '/cocktails', to: 'cocktails#search', as: :cocktails_path
  resources :cocktails, only: [:show, :new, :create] do
    resources :doses, only: [:create]
    resources :reviews, only: [:create]
  end
  resources :doses, only: [:edit, :update, :destroy]
  resources :reviews, only: [:edit, :update, :destroy]
end
