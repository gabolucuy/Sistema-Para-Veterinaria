class Mascotum < ActiveRecord::Base
	belongs_to :cliente
	has_many :atencions
	validates :nombre,:presence=>{message: "No puede estar en blanco"}
	validates :especie,:presence=>{message: "No puede estar en blanco"}
	validates :raza,:presence=>{message: "No puede estar en blanco"}
	validates :fecha_nacimiento,:presence=>{message: "No puede estar en blanco"}
	validates :cliente_id,:presence=>{message: "No puede estar en blanco"}

	before_create :fecha_nac_verdad?
	def fecha_nac_verdad?
		if( fecha_nacimiento < Date.today)
			return true
		else
			errors.add(:fecha_nacimiento, "Debe ser menor a la fecha actual")
			return false
		end
	end
end
