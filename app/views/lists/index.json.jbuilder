json.array!(@lists) do |list|
  json.extract! list, :id, :producto, :costo, :cantidad,:ventum_id
  json.url list_url(list, format: :json)
end
