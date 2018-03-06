class AddColumnToAdoptionPet < ActiveRecord::Migration[5.0]
  def change
    add_reference :adoption_pets, :breed, foreign_key: true
  end
end
