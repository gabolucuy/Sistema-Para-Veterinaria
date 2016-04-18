class Cliente < ActiveRecord::Base
	validates :ci, :nombre, :apellido, :correo, :telefono, presence: true
	has_many :mascotums
	validates :correo, :ci, uniqueness: true
end
