class CreatePlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists do |t|
      t.string :id_user
      t.string :id_podcast
      t.date :dateCreation

      t.timestamps
    end
  end
end
