class AddAttachmentImageToAdoptionPets < ActiveRecord::Migration
  def self.up
    change_table :adoption_pets do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :adoption_pets, :image
  end
end
