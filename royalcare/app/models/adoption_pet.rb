class AdoptionPet < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>",thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, presence: true
  validates :description, presence: true
  validates :birthday, presence: true

  validates :weight, presence: true
  has_many :pet_photos, :dependent => :destroy
  has_one :breed

  def age
    now = Date.current
    current_months = (now.year - 1) * 12 + now.month
    pet_months =  (self.birthday.year - 1) * 12 + self.birthday.month

    age = current_months - pet_months
    return age
  end
end
