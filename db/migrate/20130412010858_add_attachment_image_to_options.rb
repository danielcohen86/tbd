class AddAttachmentImageToOptions < ActiveRecord::Migration
  def self.up
    change_table :options do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :options, :image
  end
end
