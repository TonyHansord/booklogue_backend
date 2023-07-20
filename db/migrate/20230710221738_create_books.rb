class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :genre_id
      t.string :format

      t.timestamps
    end
  end
end
