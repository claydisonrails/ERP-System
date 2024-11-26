Rails.application.routes.draw do
  get "home/index"
  get 'relatorios/clientes_dashboard', to: 'relatorios#clientes_dashboard'
  devise_for :users
  
  resources :clientes
  resources :produtos
  resources :pedidos
  resources :relatorios

  # Página inicial
  root 'home#index'

  authenticated :user do
    root to: 'dashboard#index', as: :authenticated_root # Página inicial para usuários logados
  end

  unauthenticated do
    root to: 'devise/sessions#new', as: :unauthenticated_root # Página inicial para não logados (login)
  end

  namespace :api do
    namespace :v1 do
      resources :clientes, only: [:index, :show, :create]
      resources :produtos, only: [:index, :show]
    end
  end
end
