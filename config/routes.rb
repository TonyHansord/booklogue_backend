Rails.application.routes.draw do
  get "/books", to: "books#index"
  get "/me/books", to: "books#my_books"

  get "/me/books/:book_id/notes", to: "notes#index"
  post "/me/books/:book_id/notes", to: "notes#create"

  get "/books/:book_id", to: "books#show"
  post "/books/:book_id", to: "books#add_to_my_books"

  # get "/me/:book_id", to: "books#show"
  # post "/me/:book_id", to: "books#create"

  get "/me", to: "users#show"
  post "/signup", to: "users#create"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
