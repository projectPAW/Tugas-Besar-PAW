class CreateMateris < ActiveRecord::Migration[5.1]
  def change
    create_table :materis do |t|
      t.string :jurusan
      t.string :mapel
      t.string :judul
      t.binary :file

      t.timestamps
    end
  end
end
