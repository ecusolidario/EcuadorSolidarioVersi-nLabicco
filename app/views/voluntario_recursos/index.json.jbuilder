json.array!(@voluntario_recursos) do |voluntario_recurso|
  json.extract! voluntario_recurso, :id
  json.url voluntario_recurso_url(voluntario_recurso, format: :json)
end
