Rails.application.routes.draw do
  
  root to: "homes#top"
  devise_for :users
  resources :books, only: [:show, :index, :edit, :create, :destory, :update]
  resources :user, only: [:show, :index, :edit, :u]
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
