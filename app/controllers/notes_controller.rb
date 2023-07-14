class NotesController < ApplicationController
  def index
    user = User.find(session[:user_id])
    book = user.books.find(params[:book_id])
    notes = book.notes
    render json: notes
  end

  def create
    user = User.find(session[:user_id])
    book = user.books.find(params[:book_id])
    note = book.notes.create(note_params)
    render json: note
  end

  private

  def note_params
    params.permit(:subject, :content)
  end
end
