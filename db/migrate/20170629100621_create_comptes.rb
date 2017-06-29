class CreateComptes < ActiveRecord::Migration[5.1]
  def change
    create_table :comptes do |t|
      t.string :id
      t.string :email
      t.string :psswd
      t.string :id_user

      t.timestamps
    end
  end
end
