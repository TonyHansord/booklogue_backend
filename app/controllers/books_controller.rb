class BooksController < ApplicationController
  before action :authorize
  wrap_parameters format: []

  def index
    books = Book.all
    render json: books
  end
end
