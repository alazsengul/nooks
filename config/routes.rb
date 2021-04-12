Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  get 'apartments/index'

  get 'apartments/:id', to: 'pages#:id'

  resources :groups do
    resources :apartments
  end
end
