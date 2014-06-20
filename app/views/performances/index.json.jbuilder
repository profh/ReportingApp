json.array!(@performances) do |performance|
  json.extract! performance, :id, :visit_id
  json.url performance_url(performance, format: :json)
end
