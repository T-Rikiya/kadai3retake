Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  get 'homes/about'
  resources :homes, only: [:top, :about]
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:new, :index, :show, :edit, :delet, :create]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
