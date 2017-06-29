Rails.application.routes.draw do
  resources :groupe_podcasts
  resources :playlists
  resources :abonnements
  resources :comptes
  resources :podcasts
  resources :lectures
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
