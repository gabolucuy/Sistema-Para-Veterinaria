class Cliente < ActiveRecord::Base
	validates :ci, :uniqueness=>{message:"Ya esta registrado"}
	validates :ci,:presence=>{message: "No puede estar vacio"}
	validates :nombre,:presence=>{message: "No puede estar vacio"}
	validates :apellido,:presence=>{message: "No puede estar vacio"}
	validates :telefono,:presence=>{message: "No puede estar vacio"}
	validates :correo,:presence=>{message: "No puede estar vacio"}
	validates :correo, uniqueness: true
	has_many :mascotums
	has_many :atencions
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
