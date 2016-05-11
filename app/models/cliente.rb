class Cliente < ActiveRecord::Base
	validates :ci, :uniqueness=>{message:"ya esta registrado"}
	validates :ci,:presence=>{message: "no puede estar vacio"}
	validates :nombre,:presence=>{message: "no puede estar vacio"}
	validates :apellido,:presence=>{message: "no puede estar vacio"}
	validates :telefono,:presence=>{message: "no puede estar vacio"}
	validates :correo,:presence=>{message: "no puede estar vacio"}
	validates :correo, uniqueness: true
	has_many :mascotums
	has_many :ventums
	before_create :correo?
def correo?
	a=self.correo.split('@')
	if(a.size!=2)
		errors.add(:correo, "no valido")
		return false
	end
end
end
