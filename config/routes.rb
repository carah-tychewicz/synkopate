Rails.application.routes.draw do
  namespace :api do
    post "/composers" => "composers#create"
    post "/sessions" => "sessions#create"
  end
end
