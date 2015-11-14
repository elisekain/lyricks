Rails.application.routes.draw do
  devise_for :users
  root to: "cards#index"

  resources :cards
end
