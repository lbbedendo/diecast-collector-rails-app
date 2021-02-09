Rails.application.routes.draw do
  root "automakers#index"

  resources :automakers do
    resources :cars
  end

  resources :cars
  resources :collections
  resources :brands
end
