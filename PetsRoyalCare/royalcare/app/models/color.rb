class Color < ApplicationRecord
  has_many :product_colors, :dependent => :destroy

  validates :name, presence: true, uniqueness:true

  has_many :products, through: :product_colors
end
