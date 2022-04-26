Rails.application.routes.draw do
  resources :comments,:railsblogs,:news
  # resources :railsblogs
  # resources :news
  # get 'page/home'
  # get 'page/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
