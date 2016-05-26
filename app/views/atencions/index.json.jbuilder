json.array!(@atencions) do |atencion|
  json.extract! atencion, :id, :fecha, :cliente_id, :mascota_nombre, :anamnesis, :temperatura, :mucosas, :palpacion, :diagnostico, :tratamiento, :Idveterinadio
  json.url atencion_url(atencion, format: :json)
end
