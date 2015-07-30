json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :quantity_on_hand, :selling_price, :product_cost, :shipping_weight, :img_th, :image_full
  json.url product_url(product, format: :json)
end
