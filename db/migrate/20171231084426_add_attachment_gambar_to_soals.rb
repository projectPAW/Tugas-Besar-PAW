class AddAttachmentGambarToSoals < ActiveRecord::Migration[5.1]
   def self.up
  	change_table :soals do |t|
  		t.attachment :gambar
  	end
  end

  def self.down
  	remove_attachment :soals, :gambar
  end
end
