json.array!(@seccions) do |seccion|
  json.extract! seccion, :id, :nombre, :subestacion_id
  json.url seccion_url(seccion, format: :json)
end
