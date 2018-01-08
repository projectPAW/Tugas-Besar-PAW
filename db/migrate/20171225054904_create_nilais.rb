class CreateNilais < ActiveRecord::Migration[5.1]
  def change
    create_table :nilais do |t|
      t.string :mapel
      t.string :noinduk
      t.string :nama
      t.integer :totnilai

      t.timestamps
    end
  end
end
