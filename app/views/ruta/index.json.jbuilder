json.array!(@ruta) do |rutum|
  json.extract! rutum, :id, :nombre
  json.url rutum_url(rutum, format: :json)
end
