class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :id
      t.string :nom
      t.string :prenom
      t.string :email

      t.timestamps
    end
  end
end
