class CreatePetPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :pet_photos do |t|
      t.references :adoption_pet, foreign_key: true

      t.timestamps
    end
  end
end
