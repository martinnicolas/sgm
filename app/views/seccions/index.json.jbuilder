json.array!(@seccions) do |seccion|
  json.extract! seccion, :id, :nombre
  json.url seccion_url(seccion, format: :json)
end
