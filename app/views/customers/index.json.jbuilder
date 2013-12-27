json.array!(@customers) do |customer|
  json.extract! customer, :name, :phone, :email, :mailbox, :wesid
  json.url customer_url(customer, format: :json)
end