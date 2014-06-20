json.array!(@visits) do |visit|
  json.extract! visit, :id, :user_id, :first_action_time, :last_action_time, :entry_url, :exit_url, :total_events, :total_time, :total_searches
  json.url visit_url(visit, format: :json)
end
