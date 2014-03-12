json.array!(@drawings) do |drawing|
  json.extract! drawing, :id, :nome, :description
  json.url drawing_url(drawing, format: :json)
end
