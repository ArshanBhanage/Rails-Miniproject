Rails.application.routes.draw do
  devise_for :users
  resources :mybooks
  #get 'home/index'
  #root 'home#index'
  root 'mybooks#browse'
  get 'home/about'
  get 'search', to: "mybooks#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
