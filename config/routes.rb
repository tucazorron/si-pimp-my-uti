Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    authenticated :user do
      root 'beds#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :patients
  resources :beds
  resources :graphs, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
