json.array!(@voluntario_habilidads) do |voluntario_habilidad|
  json.extract! voluntario_habilidad, :id
  json.url voluntario_habilidad_url(voluntario_habilidad, format: :json)
end
