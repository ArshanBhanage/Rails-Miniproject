Rails.application.routes.draw do
  get 'pages/index'
  devise_for :users
  resources :mybooks
  #get 'home/index'
  #root 'home#index'
  root 'mybooks#index'
  get 'home/about'
 
  get 'browse', to:"mybooks#browse"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
