Rails.application.routes.draw do
  root "automakers#index"

  resources :automakers
end
