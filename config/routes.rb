Rails.application.routes.draw do
 
  resources :postacs
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
  end
  root to: "api/v1/norgmars#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
