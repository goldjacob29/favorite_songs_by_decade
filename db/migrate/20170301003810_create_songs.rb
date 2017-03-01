class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :artist_id
      t.integer :genre_id
      t.integer :year

      t.timestamps

    end
  end
end
