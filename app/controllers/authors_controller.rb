class AuthorsController < ApplicationController
  before_action :authorize, only: [:create]

  def index
    authors = Author.all
    render json: authors
  end

  def create
    author = Author.create(author_params)
    render json: author
  end

  private

  def author_params
    params.permit(:first_name, :last_name)
  end
end
