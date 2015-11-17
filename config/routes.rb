Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "cards#index"

  get "cards/browse" => "cards#browse"

  resources :cards

  post "/cards/:id/tag/:tag_id" => "cards#add_tag"
  delete "/cards/:id/tag/:tag_id" => "cards#remove_tag"

end
