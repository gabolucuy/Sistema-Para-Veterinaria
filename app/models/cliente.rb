class Cliente < ActiveRecord::Base
	validates :correo,:presence=>{message: "no puede estar vacio"}
	validates :nombre,:presence=>{message: "no puede estar vacio"}
	validates :apellido,:presence=>{message: "no puede estar vacio"}
	validates :telefono,:presence=>{message: "no puede estar vacio"}
	validates :ci,:presence=>{message: "no puede estar vacio"}

	has_many :mascotums
	has_many :ventums
	validates :ci,:correo, uniqueness: true
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
