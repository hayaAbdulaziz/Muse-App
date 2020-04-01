Rails.application.routes.draw do
  devise_for :users
  root 'artists#index'
  
  resources :artists, :songs
  patch "artists/:id", to: "artists#update"
  get "songs/new", to: "songs#new"
  get "bootstrap", to: "artists#bootstrap"
  # get "artists", to: "artists#index"
  # get "artists/:id", to: "artists#show", as: :artist
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
