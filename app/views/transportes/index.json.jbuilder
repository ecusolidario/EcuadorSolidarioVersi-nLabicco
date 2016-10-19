json.array!(@transportes) do |transporte|
  json.extract! transporte, :id
  json.url transporte_url(transporte, format: :json)
end
