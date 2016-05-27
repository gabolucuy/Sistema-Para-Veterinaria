class Atencion < ActiveRecord::Base
	
	validates :cliente_id,:presence=>{message: "No puede estar vacio"}
	validates :Idveterinario,:presence=>{message: "No puede estar vacio"}
	validates :mascota_nombre,:presence=>{message: "No puede estar vacio"}
	validates :anamnesis,:presence=>{message: "No puede estar vacio"}
	validates :temperatura,:presence=>{message: "No puede estar vacio"}
	validates :mucosas,:presence=>{message: "No puede estar vacio"}
	validates :palpacion,:presence=>{message: "No puede estar vacio"}
	validates :diagnostico,:presence=>{message: "No puede estar vacio"}
	validates :tratamiento,:presence=>{message: "No puede estar vacio"}
end
