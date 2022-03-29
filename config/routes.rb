Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :estimations, only: [:index, :new, :create, :destroy]
  get 'profile/:id', to: 'dashboards#profile', as: :profile
end
