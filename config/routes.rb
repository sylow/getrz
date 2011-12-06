Web::Application.routes.draw do

  resources :offers do
    collection do
      get :personal
    end
  end
  resources :authentications
  resources :user_sessions
  resources :users

  match '/auth/:provider/callback' => 'authentications#create'
  match 'login' => "user_sessions#new",      :as => :login
  match 'logout' => "user_sessions#destroy", :as => :logout

  get "user_sessions/new"
  get "home/index", :as => :home
  get "signups/index"
  post "signups/create"
  get "/search/index"
  post "/search/index"

  root :to => "signups#index"
end
