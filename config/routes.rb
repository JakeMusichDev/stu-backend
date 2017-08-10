Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :collectors
      resources :sellers
      resources :auctions
      resources :items
      resources :bids
    end
  end
end
