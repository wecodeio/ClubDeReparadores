Rails.application.routes.draw do
  get 'users/new'
  namespace :admin do
    resources :repairers
    resources :categories
  end
   # resources :home do 
   #   get :repairers, on: :collection
   # end
   resources :repairers
   root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end