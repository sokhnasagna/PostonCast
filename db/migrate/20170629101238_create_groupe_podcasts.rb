class CreateGroupePodcasts < ActiveRecord::Migration[5.1]
  def change
    create_table :groupe_podcasts do |t|
      t.string :id_group
      t.date :dateCreation
      t.string :libelle
      t.string :image

      t.timestamps
    end
  end
end
