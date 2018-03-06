class Breed < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :adoption_pets
end
