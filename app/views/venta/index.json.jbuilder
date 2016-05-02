json.array!(@venta) do |ventum|
  json.extract! ventum, :id, :Costo
  json.url ventum_url(ventum, format: :json)
end
