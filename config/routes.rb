Ticketer::Application.routes.draw do
  resources :tickets

  resources :users
  get 'signup' => 'users#new'

  resources :sessions, only: [ :new, :create, :destroy ]

  get 'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'

  root :to => 'tickets#index'

end