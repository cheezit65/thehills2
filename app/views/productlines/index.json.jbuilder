json.array!(@productlines) do |productline|
  json.extract! productline, :id
  json.url productline_url(productline, format: :json)
end
