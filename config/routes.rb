Ticketer::Application.routes.draw do
  root :to => 'tickets#index'

  scope "(:locale)", locale: /en|nl/ do
    resources :tickets do
      collection do
        match 'search' => 'tickets#search', as: :search
      end
    end

    resources :users
    get 'signup' => 'users#new'

    resources :sessions, only: [ :new, :create, :destroy ]

    get 'login' => 'sessions#new'
    delete 'logout' => 'sessions#destroy'

    get '/:locale' => 'tickets#index'
  end
end