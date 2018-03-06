json.extract! product_specification, :id, :size, :price, :product_id, :created_at, :updated_at
json.url product_specification_url(product_specification, format: :json)
