Rails.application.routes.draw do
  namespace :admin do
    resources :repairers
    resources :categories
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
Rails.application.routes.draw do
  namespace :home do
    resources :repairers
    resources :categories
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end