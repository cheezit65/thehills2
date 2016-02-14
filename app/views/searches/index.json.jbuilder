json.array!(@searches) do |search|
  json.extract! search, :id, :results
  json.url search_url(search, format: :json)
end
