class Mascotum < ActiveRecord::Base
	belongs_to :cliente
	validates :nombre, :especie, :raza, :fecha_nacimiento, :clientes_id, presence: true
	before_create :fecha_nac_verdad? 
	def fecha_nac_verdad?
		if( fecha_nacimiento < Date.today)
			return true
		else
			errors.add(:fecha_nacimiento, "debe ser menor a la fecha actual")
			return false
		end
	end
end
	