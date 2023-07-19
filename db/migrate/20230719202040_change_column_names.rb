class ChangeColumnNames < ActiveRecord::Migration[7.0]
  def change
    rename_column :books, :author_id, :author
    rename_column :books, :genre_id, :genre
  end
end
