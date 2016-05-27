class Atencion < ActiveRecord::Base
<<<<<<< HEAD
	belongs_to :cliente
	belongs_to :mascotum
	belongs_to :veterinario
=======
	
	validates :cliente_id,:presence=>{message: "No puede estar vacio"}
	validates :Idveterinario,:presence=>{message: "No puede estar vacio"}
	validates :mascota_nombre,:presence=>{message: "No puede estar vacio"}
	validates :anamnesis,:presence=>{message: "No puede estar vacio"}
	validates :temperatura,:presence=>{message: "No puede estar vacio"}
	validates :mucosas,:presence=>{message: "No puede estar vacio"}
	validates :palpacion,:presence=>{message: "No puede estar vacio"}
	validates :diagnostico,:presence=>{message: "No puede estar vacio"}
	validates :tratamiento,:presence=>{message: "No puede estar vacio"}
>>>>>>> da5f42a89af28f6eabe39196dc3edf64a6104c6f
end
