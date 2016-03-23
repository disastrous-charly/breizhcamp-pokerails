json.array!(@talents) do |talent|
  json.extract! talent, :id, :name, :created_at
  json.url talent_url(talent, format: :json)
end
