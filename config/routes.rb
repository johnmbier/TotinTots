Rails.application.routes.draw do
  
  get 'kids/new'

  get 'trips/weather'

  get 'trips/activities'

   get  'about' => 'welcome#about', as: :about
   get  'contact' => 'welcome#contact', as: :contact

  
  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout

   resources :questions

   
    resources :users 
     resources :lists do
      resources :build, controller: 'lists/build'
     
    end

   root 'welcome#index'


#     Prefix Verb   URI Pattern                              Controller#Action
#            login GET    /login(.:format)                         sessions#new
#                  POST   /login(.:format)                         sessions#create
#           logout DELETE /logout(.:format)                        sessions#destroy
#        questions GET    /questions(.:format)                     questions#index
#                  POST   /questions(.:format)                     questions#create
#     new_question GET    /questions/new(.:format)                 questions#new
#    edit_question GET    /questions/:id/edit(.:format)            questions#edit
#         question GET    /questions/:id(.:format)                 questions#show
#                  PATCH  /questions/:id(.:format)                 questions#update
#                  PUT    /questions/:id(.:format)                 questions#update
#                  DELETE /questions/:id(.:format)                 questions#destroy
#            users GET    /users(.:format)                         users#index
#                  POST   /users(.:format)                         users#create
#         new_user GET    /users/new(.:format)                     users#new
#        edit_user GET    /users/:id/edit(.:format)                users#edit
#             user GET    /users/:id(.:format)                     users#show
#                  PATCH  /users/:id(.:format)                     users#update
#                  PUT    /users/:id(.:format)                     users#update
#                  DELETE /users/:id(.:format)                     users#destroy
# list_build_index GET    /lists/:list_id/build(.:format)          lists/build#index
#                  POST   /lists/:list_id/build(.:format)          lists/build#create
#   new_list_build GET    /lists/:list_id/build/new(.:format)      lists/build#new
#  edit_list_build GET    /lists/:list_id/build/:id/edit(.:format) lists/build#edit
#       list_build GET    /lists/:list_id/build/:id(.:format)      lists/build#show
#                  PATCH  /lists/:list_id/build/:id(.:format)      lists/build#update
#                  PUT    /lists/:list_id/build/:id(.:format)      lists/build#update
#                  DELETE /lists/:list_id/build/:id(.:format)      lists/build#destroy
#            lists GET    /lists(.:format)                         lists#index
#                  POST   /lists(.:format)                         lists#create
#         new_list GET    /lists/new(.:format)                     lists#new
#        edit_list GET    /lists/:id/edit(.:format)                lists#edit
#             list GET    /lists/:id(.:format)                     lists#show
#                  PATCH  /lists/:id(.:format)                     lists#update
#                  PUT    /lists/:id(.:format)                     lists#update
#                  DELETE /lists/:id(.:format)                     lists#destroy
#             root GET    /                                        welcome#index
end
