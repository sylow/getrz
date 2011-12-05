Web::Application.routes.draw do
  resources :authentications
  resources :user_sessions
  resources :users

  match '/auth/:provider/callback' => 'authentications#create'
  match 'login' => "user_sessions#new",      :as => :login
  match 'logout' => "user_sessions#destroy", :as => :logout

  get "user_sessions/new"
  get "home/index", :as => :home

  root :to => "user_sessions#new"
end
