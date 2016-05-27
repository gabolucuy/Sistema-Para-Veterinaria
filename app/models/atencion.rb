class Atencion < ActiveRecord::Base

	belongs_to :cliente
	belongs_to :mascotum
	belongs_to :veterinario
	validates :anamnesis,:presence=>{message: "No puede estar vacio"}
	validates :temperatura,:presence=>{message: "No puede estar vacio"}
	validates :mucosas,:presence=>{message: "No puede estar vacio"}
	validates :palpacion,:presence=>{message: "No puede estar vacio"}
	validates :diagnostico,:presence=>{message: "No puede estar vacio"}
	validates :tratamiento,:presence=>{message: "No puede estar vacio"}

end
