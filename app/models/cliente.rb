class Cliente < ActiveRecord::Base
	validates :ci, :nombre, :apellido, :correo, :telefono, presence: true
	has_many :mascotums
	has_many :ventums
	validates :correo, :ci, uniqueness: true
	before_create :correo?
def correo?
	a=self.correo.split('@')
	if(a.size!=2)
		errors.add(:correo, "no valido")
		return false
	end
end

end
