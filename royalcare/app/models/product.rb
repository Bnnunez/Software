class Product < ApplicationRecord
  has_many :product_specifications, :dependent => :destroy
  has_many :product_categories, :dependent => :destroy
  has_many :product_colors, :dependent => :destroy
  has_many :product_photos, :dependent => :destroy


  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  has_many :categories, through: :product_categories
  has_many :colors, through: :product_colors

  has_attached_file :image, styles: { medium: "300x300>",thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
