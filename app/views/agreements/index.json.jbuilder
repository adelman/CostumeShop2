json.array!(@agreements) do |agreement|
  json.extract! agreement, :name, :phone, :email, :mailbox, :wesid, :title, :start, :end, :due, :financer, :employee
  json.url agreement_url(agreement, format: :json)
end