json.array!(@veterinarios) do |veterinario|
  json.extract! veterinario, :id, :ci, :nombre, :apellido, :telefono, :correo
  json.url veterinario_url(veterinario, format: :json)
end
