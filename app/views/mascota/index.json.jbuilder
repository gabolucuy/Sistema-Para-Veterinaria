json.array!(@mascota) do |mascotum|
  json.extract! mascotum, :id, :id_cliente, :nombre, :especie, :raza, :fecha_nacimiento
  json.url mascotum_url(mascotum, format: :json)
end
