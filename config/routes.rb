Rails.application.routes.draw do
  namespace :api do
    get "/upbeats" => "upbeats#index"
    get "/composers" => "composers#index"
    get "/repertoires" => "repertoires#index"
    get "/upbeats/:id" => "upbeats#show"
    get "/composers/:id" => "composers#show"
    get "/repertoires/:id" => "repertoires#show"
    post "/composers" => "composers#create"
    post "/sessions" => "sessions#create"
    post "/repertoires" => "repertoires#create"
  end
end
