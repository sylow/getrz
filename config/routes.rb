Web::Application.routes.draw do
  resources :authentications
  resources :user_sessions
  get "user_sessions/new"

  match '/auth/:provider/callback' => 'authentications#create'
  match 'login' => "user_sessions#new",      :as => :login
  match 'logout' => "user_sessions#destroy", :as => :logout

end
