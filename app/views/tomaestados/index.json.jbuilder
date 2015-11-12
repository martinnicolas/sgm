json.array!(@tomaestados) do |tomaestado|
  json.extract! tomaestado, :id, :dni, :apellido, :nombre
  json.url tomaestado_url(tomaestado, format: :json)
end
