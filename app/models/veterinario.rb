class Veterinario < ActiveRecord::Base
  validates :ci, :uniqueness=>{message:"Ya esta registrado"}
	validates :ci,:presence=>{message: "No puede estar vacio"}
	validates :nombre,:presence=>{message: "No puede estar vacio"}
	validates :apellido,:presence=>{message: "No puede estar vacio"}
	validates :telefono,:presence=>{message: "No puede estar vacio"}
	validates :correo,:presence=>{message: "No puede estar vacio"}
	validates :correo, uniqueness: true
  def correo?
  	a=self.correo.split('@')
  	if(a.size!=2)
  		errors.add(:correo, "no valido")
  		return false
  	end
  end
end
