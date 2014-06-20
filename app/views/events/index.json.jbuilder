json.array!(@events) do |event|
  json.extract! event, :id, :visit_action_id, :event_category, :event_action, :event_label, :event_value, :custom
  json.url event_url(event, format: :json)
end
