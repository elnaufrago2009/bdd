json.array!(@customers) do |customer|
  json.extract! customer, :id, :image, :nombre
  json.url customer_url(customer, format: :json)
end
