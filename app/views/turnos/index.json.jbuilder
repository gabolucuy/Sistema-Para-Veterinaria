json.array!(@turnos) do |turno|
  json.extract! turno, :id, :cont, :actual
  json.url turno_url(turno, format: :json)
end
