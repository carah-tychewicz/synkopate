Rails.application.routes.draw do
  namespace :api do
    get "/upbeats" => "upbeats#index"
    get "/upbeats/:id" => "upbeats#show"
    post "/composers" => "composers#create"
    post "/sessions" => "sessions#create"
    post "/upbeats" => "upbeats#create"
  end
end
