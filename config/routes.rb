Rails.application.routes.draw do
  # get 'city/new'

  # get 'city/create'

  # get 'city/update'

  # get 'city/edit'

  # get 'city/destroy'

  # get 'city/index'

  # get 'city/show'

  resources :city

  root to: 'visitors#index'
  get "users", :to => redirect("all_users")
  get "all_users", :to => "users#index"
  devise_for :users, :controllers => { :registrations => "users/registrations" }
  resources :users

end
