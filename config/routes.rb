Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  namespace :admin do
    resources :repairers
    resources :categories
  end
   # resources :home do 
   #   get :repairers, on: :collection
   # end
   resources :repairers do
      get :search, on: :collection
   end
   root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#new"
  resources :users
  resources :sessions
end