json.array!(@subestacions) do |subestacion|
  json.extract! subestacion, :id, :codigo, :nombre
  json.url subestacion_url(subestacion, format: :json)
end
