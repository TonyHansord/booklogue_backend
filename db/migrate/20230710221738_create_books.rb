class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :author_id
      t.integer :genre_id
      t.string :format

      t.timestamps
    end
  end
end
