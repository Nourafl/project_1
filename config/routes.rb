Rails.application.routes.draw do
  resources :posts
  resources :experts
  resources :services
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# root to: "home#index"
end
