Rails.application.routes.draw do
  resources :users
  resources :stories
  root "fragments#new"

  resources :fragments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
