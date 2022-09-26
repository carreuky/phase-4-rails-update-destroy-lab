Rails.application.routes.draw do
  resources :plants, only: [:index, :show, :create, :destroy ,:update]
  # patch "/plants/:id/stock", to: "plants#toggle"
end
