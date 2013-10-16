json.array!(@state_or_provinces) do |state_or_province|
  json.extract! state_or_province, :name, :postalAbbreviation
  json.url state_or_province_url(state_or_province, format: :json)
end
