class ProductSpecification < ApplicationRecord
  belongs_to :product
  validates :size, presence: true
  validates :price, presence: true
  validates :product_id, uniqueness: { scope: :size }

end
