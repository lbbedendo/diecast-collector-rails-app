Rails.application.routes.draw do
  root "automakers#index"

  get "/automakers", to: "automakers#index"
  get "/automakers/:id", to: "automakers#show"
end
