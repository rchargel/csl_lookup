json.array!(@countries) do |country|
  json.extract! country, :name, :officialName, :iso2Code, :iso3Code
  json.url country_url(country, format: :json)
end
