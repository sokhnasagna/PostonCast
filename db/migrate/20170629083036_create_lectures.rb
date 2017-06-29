class CreateLectures < ActiveRecord::Migration[5.1]
  def change
    create_table :lectures do |t|
      t.string :id
      t.string :id_user
      t.string :id_podcast
      t.boolean :enLecture

      t.timestamps
    end
  end
end
