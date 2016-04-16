json.array!(@prodcutos) do |prodcuto|
  json.extract! prodcuto, :id, :codigo, :nombre, :fecha_vencimiento, :cantidad
  json.url prodcuto_url(prodcuto, format: :json)
end
