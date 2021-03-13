Rails.application.routes.draw do
  root "index#index"

  resources :automakers do
    resources :cars
  end

  resources :cars
  resources :collections
  resources :brands
end
