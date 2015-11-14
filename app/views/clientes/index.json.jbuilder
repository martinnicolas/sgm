json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :dni, :apellido, :nombre, :telefono, :email, :domicilio
  json.url cliente_url(cliente, format: :json)
end
