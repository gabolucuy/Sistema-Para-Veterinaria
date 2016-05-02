class Ventum < ActiveRecord::Base
	has_many :lists
	before_create :set_costo
	def set_costo
		self.Costo=0
	end
end
