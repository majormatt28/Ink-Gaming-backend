Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  resources :users, params: :_username
  resources :consoles
  resources :comments
  resources :console_posts

  post '/login', to: 'users#login'
  post '/signup', to: 'users#signup'
  get '/me', to: 'users#me'
  patch '/me', to: 'users#update'
end
