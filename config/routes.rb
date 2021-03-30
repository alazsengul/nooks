Rails.application.routes.draw do
  get 'apartments/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  resources :groups do
    resources :apartments
  end
end
