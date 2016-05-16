class Turno < ActiveRecord::Base
	before_create :fecha, :estado_espera

	def fecha
		self.actual=Date.today
	end
	def estado_espera
		self.estado="Espera"
	end
end
