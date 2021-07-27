Rails.application.routes.draw do
  resources :books
root to: 'book_store#books'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#get '/hello', to: 'home#hello'
get '/sathish',to:'book_store#sidney_sheldon'
get '/novels',to: 'book_store#books'
get '/sudha' , to:'games#user'
get '/kane',to: 'articles#index'
get '/articles/:id',to: 'articles#nope'
get '/arti' , to: 'articles#new'
get '/artic' , to: 'articles#create'
#get '/user',to:'users#index'
#get '/users/new', to: 'users#new'
#post '/users', to: 'users#create'
#get '/users/:id', to: 'users#show' , as: :show_user
#get '/users/:id/edit',to: 'users#edit' , as: :edit_user
#put '/users/:id' , to: 'users#update' , as: :update_user
#delete '/users/:id' , to: 'users#destroy' , as: :delete_user

#resources  :articles
resources :users
end
