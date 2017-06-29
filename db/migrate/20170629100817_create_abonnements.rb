class CreateAbonnements < ActiveRecord::Migration[5.1]
  def change
    create_table :abonnements do |t|
      t.string :id
      t.string :id_groupePodcast
      t.string :id_user
      t.string :dateAbonnement

      t.timestamps
    end
  end
end
