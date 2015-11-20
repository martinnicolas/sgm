json.array!(@seccion_tomaestado_ruta) do |seccion_tomaestado_rutum|
  json.extract! seccion_tomaestado_rutum, :id, :seccion_id, :tomaestado_id, :rutum_id, :fecha_inicio, :fecha_fin
  json.url seccion_tomaestado_rutum_url(seccion_tomaestado_rutum, format: :json)
end
