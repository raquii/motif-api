Rails.application.routes.draw do
  resources :users, only: :index

  devise_for :users,
    path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'sign_up'
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
    }, 
    defaults: { format: :json }
    get '/me', to: 'users#show'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
