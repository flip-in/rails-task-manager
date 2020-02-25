Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #READ
  get '/tasks', to: 'tasks#index', as: :tasks
  get '/tasks/new', to: 'tasks#new', as: :new_task
  get '/tasks/:id', to: 'tasks#show', as: :task
  #Create
  post '/tasks', to: 'tasks#create'
  #UPDATE
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  #DESTROY
  delete 'tasks/:id', to: 'tasks#destroy'
end


# #READ
#  #READ ALL
#   # verb '/path', to: "controller#action", as: prefix
#   get '/restaurants', to: "restaurants#index", as: "restaurants"
#  #READ ONE
#   get '/restaurants/:id', to: "restaurants#show", as: "restaurant"
# #CREATE
#   #DISPLAY FORM
#   get '/restaurants/new', to: "restaurants#new", as: "new_restaurant"
#   #POST
#   post '/restaurants', to: "restaurants#create"
# #UPDATE
#   #DISPLAY FORM
#   get '/restaurants/:id/edit', to: "restaurants#edit", as: "edit_restaurant"
#   #UPDATE
#   patch '/restaurants/:id', to: "restaurants#update"
# #DESTROY
#   delete '/restaurants/:id', to: "restaurants#destroy"