Rails.application.routes.draw do
  get 'deck', to: 'deck#show'
  post "deck/add"
  post "deck/remove"
  resources :cards
  get 'home/about'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
