Rails.application.routes.draw do
  resources :alumnos
  resources :carreras
  resources :datos_personals
  get 'home/index'

  root to: 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
