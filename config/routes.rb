Rails.application.routes.draw do

  root 'pages#main'

  get '/guru',to:'pages#guru'
  get '/client/:id' , to: 'pages#client', as:'client'
  post  '/main',to:'pages#main'
end
