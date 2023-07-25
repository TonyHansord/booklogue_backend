Rails.application.routes.draw do
  get "/books", to: "books#index"
  get "/me/books", to: "books#my_books"
  post "/books", to: "books#create"

  get "/me/books/:book_id/notes", to: "notes#index"
  post "/me/books/:book_id/notes", to: "notes#create"

  get "/books/:book_id", to: "books#show"
  post "/books/:book_id", to: "books#add_to_my_books"

  get "/authors", to: "authors#index"
  post "/authors", to: "authors#create"

  get "/genres", to: "genres#index"

  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  delete "/me", to: "users#destroy"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
