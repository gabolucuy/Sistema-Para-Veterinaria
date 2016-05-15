json.array!(@veterinarios) do |veterinario|
  json.extract! veterinario, :id, :ci, :nombre, :apellido, :telefono, :correo, :especialidad
  json.url veterinario_url(veterinario, format: :json)
end
