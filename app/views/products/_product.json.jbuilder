json.extract! product, :id, :product_name, :description, :uom_id, :price, :quantity, :status, :other_details, :category_id, :supplier_id, :created_at, :updated_at
json.url product_url(product, format: :json)
