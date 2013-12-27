json.array!(@agreements) do |agreement|
  json.extract! agreement, :customer_id, :costume_id, :title, :start, :end, :due, :financer
  json.url agreement_url(agreement, format: :json)
end