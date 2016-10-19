json.array!(@galeria) do |galerium|
  json.extract! galerium, :id
  json.url galerium_url(galerium, format: :json)
end
