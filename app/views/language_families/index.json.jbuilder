json.array!(@language_families) do |language_family|
  json.extract! language_family, :name
  json.url language_family_url(language_family, format: :json)
end
