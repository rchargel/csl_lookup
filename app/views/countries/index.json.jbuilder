json.array!(@countries) do |country|
  json.extract! country, :name, :official_name
  json.url country_url(country, format: :json)
end
