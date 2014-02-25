json.array!(@mains) do |main|
  json.extract! main, :id, :heroinfo, :titlenews, :newscontent
  json.url main_url(main, format: :json)
end
