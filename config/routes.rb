Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :collectors
      resources :sellers
      resources :auctions
      resources :bids
      get '/auctions/:id/bids' => 'auctions#bids'
      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end
end
