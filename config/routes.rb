Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :create, :update, :destroy]
  resources :hero_powers, only: [:index, :show, :create, :update, :destroy]
  resources :heros, only: [:index, :show, :create,  :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
