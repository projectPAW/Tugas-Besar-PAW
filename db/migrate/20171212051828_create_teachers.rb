class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.integer :nip
      t.string :nama
      t.string :jenkel
      t.string :mapel
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
