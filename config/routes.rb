Rails.application.routes.draw do
  resources :messages, only: %i[new create show]
  get "/messages", to: redirect("/")
  post "/webhooks", to: "webhooks#create"
  root to: "messages#index"
end
