Rails.application.routes.draw do
  get 'home/about' => "homes#about", as: 'about'

  devise_for :users
  resources :books, only: [:index, :edit, :create, :update, :destroy, :show, :update]
  resources :users, only: [:index, :edit, :update, :show]
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end