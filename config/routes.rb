Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "cards#index"

  get "cards/browse" => "cards#browse"

  resources :cards
end
