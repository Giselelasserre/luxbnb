Rails.application.routes.draw do
  root to: 'pages#home'

  resources :flats do
    resources :reservations, only: [:create]
  end

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
