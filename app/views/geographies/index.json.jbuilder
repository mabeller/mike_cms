json.array!(@geographies) do |geography|
  json.extract! geography, :id, :state, :county
  json.url geography_url(geography, format: :json)
end
