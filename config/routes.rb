Rails.application.routes.draw do
 get '/booked' => 'pages#booked' 
 get '/contact' => 'pages#contact'
  get '/about' => 'pages#about'
  resources :reservations
  resources :posts
  resources :experts
  resources :services
  devise_for :users
  resources :users, only: [:show]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "pages#home"
end
