class CreateAdoptionPets < ActiveRecord::Migration[5.0]
  def change
    create_table :adoption_pets do |t|
      t.string :name
      t.text :description
      t.date :birthday
      t.boolean :adopted
      t.float :weight

      t.timestamps
    end
  end
end
