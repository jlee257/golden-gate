json.array!(@orders) do |order|
  json.extract! order, :id, :email, :product_id, :address
  json.url order_url(order, format: :json)
end
