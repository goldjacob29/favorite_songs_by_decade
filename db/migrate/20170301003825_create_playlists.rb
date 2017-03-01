class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.boolean :share

      t.timestamps

    end
  end
end
