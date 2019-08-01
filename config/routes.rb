Rails.application.routes.draw do
  namespace :api do
    get "/upbeats" => "upbeats#index"
    post "/composers" => "composers#create"
    post "/sessions" => "sessions#create"
    post "/upbeats" => "upbeats#create"
  end
end
