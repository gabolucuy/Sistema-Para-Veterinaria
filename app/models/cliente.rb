class Cliente < ActiveRecord::Base
	validates :ci, :nombre, :apellido, :telefono, presence: true
	validates :correo,:presence=>{message: "no puede estar vacio"}
	has_many :mascotums
	has_many :ventums
	validates :ci,:correo, uniqueness: true

end
