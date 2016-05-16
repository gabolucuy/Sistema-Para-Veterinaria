class List < ActiveRecord::Base
	belongs_to :ventum
	before_create :add_costo 
	after_create :modificar 
	validate :cantidad?, :cant?,:verdad
	before_destroy :retornar
	def verdad
		if(cantidad==nil )
			errors.add(:cantidad, " no puede ser 0")
		end
	end
	def cant?
		if(cantidad!=nil)
			if (self.cantidad <= 0 ) 
				errors.add(:cantidad, " no puede ser 0")
			end
		end
	end

	def add_costo
		if(cantidad!=nil)
			a=Prodcuto.where(nombre:self.producto).take.Precio
			self.costo =a*self.cantidad
		end
	end

	def modificar
		if(cantidad!=nil)
			a=Prodcuto.where(nombre:self.producto).take
			a.cantidad=a.cantidad-self.cantidad
			a.save
		end
	end

	def retornar
		if(cantidad!=nil)
			a=Prodcuto.where(nombre:self.producto).take
			a.cantidad=a.cantidad+self.cantidad
			a.save
		end
	end

	def cantidad?
		if(cantidad!=nil)
			unless self.cantidad <= Prodcuto.where(nombre:self.producto).take.cantidad
				errors.add(:cantidad, "rebasa en el stock")
			end
		end
	end
end
