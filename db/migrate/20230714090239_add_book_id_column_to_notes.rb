class AddBookIdColumnToNotes < ActiveRecord::Migration[7.0]
  def change
    add_column :notes, :book_id, :integer
  end
end
