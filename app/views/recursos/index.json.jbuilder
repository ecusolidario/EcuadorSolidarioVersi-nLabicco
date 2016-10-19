json.array!(@recursos) do |recurso|
  json.extract! recurso, :id
  json.url recurso_url(recurso, format: :json)
end
