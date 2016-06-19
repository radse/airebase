class AddAttachmentAireImgToAires < ActiveRecord::Migration
  def self.up
    change_table :aires do |t|
      t.attachment :aire_img
    end
  end

  def self.down
    remove_attachment :aires, :aire_img
  end
end
