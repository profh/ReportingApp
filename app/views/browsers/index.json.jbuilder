json.array!(@browsers) do |browser|
  json.extract! browser, :id, :visit_id
  json.url browser_url(browser, format: :json)
end
