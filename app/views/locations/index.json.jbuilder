json.array!(@locations) do |location|
  json.extract! location, :id, :visit_id
  json.url location_url(location, format: :json)
end
