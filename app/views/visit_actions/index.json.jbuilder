json.array!(@visit_actions) do |visit_action|
  json.extract! visit_action, :id, :visit_id, :user_id, :server_time, :url, :referrer_url, :page_title, :page, :entity, :subject, :total_time_on_action
  json.url visit_action_url(visit_action, format: :json)
end
