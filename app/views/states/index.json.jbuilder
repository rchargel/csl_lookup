json.array!(@states) do |state|
  json.extract! state, :name, :postal_abbreviation, :country_id
  json.url state_url(state, format: :json)
end
