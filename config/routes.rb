Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  
  get 'home/index'
  get 'beds/index'
  get 'beds/new'
  get 'beds/create'
  get 'beds/destroy'
  get 'pacients/index'
  get 'pacients/new'
  get 'pacients/create'
  get 'pacients/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
