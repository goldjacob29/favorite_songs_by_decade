class CreateSongLists < ActiveRecord::Migration
  def change
    create_table :song_lists do |t|
      t.integer :song_id
      t.integer :playlist_id

      t.timestamps

    end
  end
end
