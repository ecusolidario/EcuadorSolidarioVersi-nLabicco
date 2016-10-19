json.array!(@donacions) do |donacion|
  json.extract! donacion, :id
  json.url donacion_url(donacion, format: :json)
end
