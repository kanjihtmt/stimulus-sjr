Rails.application.routes.draw do
  root to: 'comments#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :comments
end
