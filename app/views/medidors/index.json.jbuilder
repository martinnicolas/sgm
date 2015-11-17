json.array!(@medidors) do |medidor|
  json.extract! medidor, :id, :numero, :nombre, :novedades, :novedades_criticas, :latitud, :longitud, :cliente_id
  json.url medidor_url(medidor, format: :json)
end
