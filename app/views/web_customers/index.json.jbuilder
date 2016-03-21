json.array!(@web_customers) do |web_customer|
  json.extract! web_customer, :id
  json.url web_customer_url(web_customer, format: :json)
end
