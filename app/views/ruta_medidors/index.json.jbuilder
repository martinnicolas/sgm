json.array!(@ruta_medidors) do |ruta_medidor|
  json.extract! ruta_medidor, :id, :rutum_id, :medidor_id
  json.url ruta_medidor_url(ruta_medidor, format: :json)
end
