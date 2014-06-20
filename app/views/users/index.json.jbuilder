json.array!(@users) do |user|
  json.extract! user, :id, :user_day_since_last, :user_day_since_first, :user_returning, :user_visit_count
  json.url user_url(user, format: :json)
end
