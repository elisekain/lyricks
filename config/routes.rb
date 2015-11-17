Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "cards#index"

  get "cards/browse" => "cards#browse"

  resources :cards

  resources :tags do
      member do
        post 'add_to_card'
        delete 'remove_from_card'
      end
    end
end
