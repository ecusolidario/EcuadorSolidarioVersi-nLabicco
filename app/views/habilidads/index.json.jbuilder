json.array!(@habilidads) do |habilidad|
  json.extract! habilidad, :id
  json.url habilidad_url(habilidad, format: :json)
end
