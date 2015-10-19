json.array!(@products) do |product|
  json.extract! product, :id, :title, :desc, :man_date, :exp_date, :inst_date, :status, :i_zone, :i_location
  json.url product_url(product, format: :json)
end
