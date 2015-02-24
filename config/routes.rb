Rails.application.routes.draw do
  root to: 'visitors#index'
  get "users", :to => redirect("all_users")
  get "all_users", :to => "users#index"
  devise_for :users, :controllers => { :registrations => "users/registrations" }
  resources :users

end
