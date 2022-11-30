Rails.application.routes.draw do
  get 'users/edit'
  get 'books/home', as: 'home'
  get 'homes/about', as: 'about'
  devise_for :users
  resources :books, only: [:index, :edit, :create, :update, :destroy, :show]
  resources :users, only: [:edit, :update, :destroy, :show]
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
