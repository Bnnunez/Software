class AddAttachmentPhotoToPetPhotos < ActiveRecord::Migration
  def self.up
    change_table :pet_photos do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :pet_photos, :photo
  end
end
