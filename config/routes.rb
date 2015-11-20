Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  get "cards/browse" => "cards#browse"
  get "/cards/browse/:tag_id" => "cards#sort"
  get "/cards/user/:tag_id" => "cards#sort_user"

  resources :cards

  post "/cards/:id/tag/:tag_id" => "cards#add_tag"
  delete "/cards/:id/tag/:tag_id" => "cards#remove_tag"

  root to: "cards#browse"

end
