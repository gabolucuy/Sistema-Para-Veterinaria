class Prodcuto < ActiveRecord::Base
	validates :codigo, :nombre, :fecha_vencimiento, :cantidad, :Precio, presence: true
	before_create :fecha_verdad?, :cantidad_verdad?, :precio_verdad?
	def fecha_verdad?
		if( self.fecha_vencimiento > Date.today)
			return true
		else
			errors.add(:fecha_vencimiento, "debe ser mayor a la fecha actual")
			return false
		end
	end
	def cantidad_verdad?
		if (self.cantidad < 0)
			errors.add(:cantidad, " no puede ser menor a 0")
			return false
		end
	end
	def precio_verdad?
		if (self.Precio < 0)
			errors.add(:Precio, " no puede ser menor a 0")
			return false
		end
	end
end
