Rails.application.routes.draw do
  
  # resources :registrations, only: [:create]
  # resources :sessions, only: [:create]
  # resources :characters
  # resources :klans
  # resources :norgmars
  # resources :postacs
  # resources :characters
  # resources :postacs
  namespace :api do
    namespace :v1 do
      resources :klans
      resources :norgmars
    end
    namespace :v2 do
      resources :klans
      resources :norgmars
      resources :postacs
    end
    namespace :v3 do
      resources :registrations, only: [:create]
      resources :sessions, only: [:create]
      resources :characters
      resources :klans
      resources :norgmars
      resources :postacs
      resources :users
      delete :logout, to: "sessions#logout"
      get :logged_in, to: "sessions#logged_in"
    end
  end
  resources :registrations, only: [:create]
  resources :sessions, only: [:create]

  resources :klans
  
  resources :norgmars
  resources :postacs
  resources :users do
    resources :characters
  end
 
  
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "api/v2/norgmars#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
