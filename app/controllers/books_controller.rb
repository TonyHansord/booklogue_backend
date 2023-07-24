class BooksController < ApplicationController
  before_action :authorize
  skip_before_action :authorize, only: [:index, :show]
  wrap_parameters format: []

  def index
    books = Book.all
    render json: books
  end

  def my_books
    if session[:user_id]
      user = User.find(session[:user_id])
      books = user.books
      render json: books
    else
      render json: { errors: ["Not authorized"] }, status: :unauthorized
    end
  end

  def show
    book = Book.find(params[:book_id])
    render json: book
  end

  def add_to_my_books
    book = Book.find(params[:book_id])
    user = User.find(session[:user_id])
    user.books << book
    render json: user, include: :books
  end

  def create
    book = Book.create(book_params)

    author = Author.find(params[:author_id])

    book.authors << Author.find(params[:author_id])
    if book.valid?
      # book.authors << Author.find(params[:author_id])
      user = User.find(session[:user_id])
      user.books << book
      render json: book, status: :created
    else
      render json: { errors: book.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def book_params
    params.permit(:title, :description, :genre_id, :author_id)
  end
end
