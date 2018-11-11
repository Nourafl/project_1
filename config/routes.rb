Rails.application.routes.draw do
  
 

  resources :reservations
  resources :posts
  resources :experts
  resources :services
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "pages#home"
end
