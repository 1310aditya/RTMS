json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :name, :email, :desc, :mob, :address
  json.url vendor_url(vendor, format: :json)
end
