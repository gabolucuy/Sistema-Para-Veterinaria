class Prodcuto < ActiveRecord::Base
	validates :codigo, :uniqueness=>{message:"Codigo ya se encuentra registrado"}
	validates :codigo,:presence=>{message: "No puede estar en blanco"}
	validates :nombre,:presence=>{message: "No puede estar en blanco"}
	validates :fecha_vencimiento,:presence=>{message: "No puede estar en blanco"}
	validates :cantidad,:presence=>{message: "No puede estar en blanco"}
	validates :Precio,:presence=>{message: "No puede estar en blanco"}

	before_create :fecha_verdad?, :cantidad_verdad?, :precio_verdad?
	def fecha_verdad?
		if( self.fecha_vencimiento > Date.today)
			return true
		else
			errors.add(:fecha_vencimiento, "Debe ser mayor a la fecha actual")
			return false
		end
	end
	def cantidad_verdad?
		if (self.cantidad < 0)
			errors.add(:cantidad, "No puede ser menor a 0")
			return false
		end
	end
	def precio_verdad?
		if (self.Precio < 0)
			errors.add(:Precio, "No puede ser menor a 0")
			return false
		end
	end
end
