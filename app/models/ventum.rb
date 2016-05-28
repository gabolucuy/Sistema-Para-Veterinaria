class Ventum < ActiveRecord::Base
	belongs_to :cliente
	has_many :lists
	before_create :set_costo

	before_destroy :retornar
	def set_costo
		self.Costo=0
	end
	def retornar
		List.where(ventum_id:self.id).destroy_all
	end
	def estados
		self.estado = false
	end
end
