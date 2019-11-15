Rails.application.routes.draw do
  resources :messages, only: [:new, :create, :show]
  get '/messages', to: redirect('/')
  root to: 'messages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
