# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                 new_users GET    /users/new(.:format)                                                                     users#new
#                edit_users GET    /users/edit(.:format)                                                                    users#edit
#                     users GET    /users(.:format)                                                                         users#show
#                           PATCH  /users(.:format)                                                                         users#update
#                           PUT    /users(.:format)                                                                         users#update
#                           DELETE /users(.:format)                                                                         users#destroy
#                           POST   /users(.:format)                                                                         users#create
#              new_subjects GET    /subjects/new(.:format)                                                                  subjects#new
#             edit_subjects GET    /subjects/edit(.:format)                                                                 subjects#edit
#                  subjects GET    /subjects(.:format)                                                                      subjects#show
#                           PATCH  /subjects(.:format)                                                                      subjects#update
#                           PUT    /subjects(.:format)                                                                      subjects#update
#                           DELETE /subjects(.:format)                                                                      subjects#destroy
#                           POST   /subjects(.:format)                                                                      subjects#create
#            new_categories GET    /categories/new(.:format)                                                                categories#new
#           edit_categories GET    /categories/edit(.:format)                                                               categories#edit
#                categories GET    /categories(.:format)                                                                    categories#show
#                           PATCH  /categories(.:format)                                                                    categories#update
#                           PUT    /categories(.:format)                                                                    categories#update
#                           DELETE /categories(.:format)                                                                    categories#destroy
#                           POST   /categories(.:format)                                                                    categories#create
#                new_orders GET    /orders/new(.:format)                                                                    orders#new
#               edit_orders GET    /orders/edit(.:format)                                                                   orders#edit
#                    orders GET    /orders(.:format)                                                                        orders#show
#                           PATCH  /orders(.:format)                                                                        orders#update
#                           PUT    /orders(.:format)                                                                        orders#update
#                           DELETE /orders(.:format)                                                                        orders#destroy
#                           POST   /orders(.:format)                                                                        orders#create
#              new_services GET    /services/new(.:format)                                                                  services#new
#             edit_services GET    /services/edit(.:format)                                                                 services#edit
#                  services GET    /services(.:format)                                                                      services#show
#                           PATCH  /services(.:format)                                                                      services#update
#                           PUT    /services(.:format)                                                                      services#update
#                           DELETE /services(.:format)                                                                      services#destroy
#                           POST   /services(.:format)                                                                      services#create
#                    signin GET    /signin(.:format)                                                                        applications#signin
#                     login POST   /login(.:format)                                                                         applications#login
#                      root GET    /                                                                                        users#main
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  resource :users, :subjects, :categories, :orders, :services
  get '/signin', to: 'applications#signin'
  post '/login', to: 'applications#login'
  root 'users#main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
