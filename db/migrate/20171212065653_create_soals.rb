class CreateSoals < ActiveRecord::Migration[5.1]
  def change
    create_table :soals do |t|
      t.string :jurusan
      t.string :mapel
      t.string :textsoal
      t.binary :gambar
      t.string :jawabanbenar
      t.string :jawaban1
      t.string :jawaban2
      t.string :jawaban3
      t.string :jawaban4
      t.string :jawaban5

      t.timestamps
    end
  end
end
