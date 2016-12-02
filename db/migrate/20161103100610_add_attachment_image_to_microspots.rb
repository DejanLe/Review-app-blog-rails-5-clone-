class AddAttachmentImageToMicrospots < ActiveRecord::Migration
  def self.up
    change_table :microspots do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :microspots, :image 
  end
end
