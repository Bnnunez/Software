class CreateProductSpecifications < ActiveRecord::Migration[5.0]
  def change
    create_table :product_specifications do |t|
      t.string :size
      t.integer :price
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
