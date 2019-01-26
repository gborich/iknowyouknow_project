Rails.application.routes.draw do
  resource :users, :subjects, :categories, :orders, :services
  get '/signin', to: 'applications#signin'
  post '/login', to: 'applications#login'
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
