Rails.application.routes.draw do
  devise_for :users
  root to: "cards#index"

  get "cards/browse" => "cards#browse"
  resources :cards
end
