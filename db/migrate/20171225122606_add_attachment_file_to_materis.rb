class AddAttachmentFileToMateris < ActiveRecord::Migration[5.1]
  def self.up
  	change_table :materis do |t|
  		t.attachment :file
  	end
  end

  def self.down
  	remove_attachment :materis, :file
  end
end
