class Cliente < ActiveRecord::Base
	EMAIL_REGEX = /\A([a-z0-9][\._\-]?)+@(\w)+(\.([a-z])+)+\z/i
	validates :ci, :uniqueness=>{message:"Ya esta registrado"}
	validates :ci,:presence=>{message: "No puede estar vacio"}
	validates :nombre,:presence=>{message: "No puede estar vacio"}
	validates :apellido,:presence=>{message: "No puede estar vacio"}
	validates :telefono,:presence=>{message: "No puede estar vacio"}
	validates :correo,:presence=>{message: "No puede estar vacio"}
	validates :correo, uniqueness: true,format: {with:  EMAIL_REGEX,message:"Formato invalido	"}
	has_many :mascotums
	has_many :atencions
	has_many :ventums
	before_create :correo?

end
