class AddColumnToAdoptionPets < ActiveRecord::Migration

  def change
    add_column :adoption_pets, :sterilized, :boolean
    add_column :adoption_pets, :vaccinated, :boolean
    add_column :adoption_pets, :house, :boolean
    add_column :adoption_pets, :depto, :boolean
    add_column :adoption_pets, :other_dog, :boolean
    add_column :products, :visible, :boolean, default: false

  end

  end
