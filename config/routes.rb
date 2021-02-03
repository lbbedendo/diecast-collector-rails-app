Rails.application.routes.draw do
  root "automakers#index"

  resources :automakers do
    resources :cars
  end
end
