class Cliente < ActiveRecord::Base
	validates :ci, :nombre, :apellido, :correo, :telefono, presence: true
	has_many :mascotums
	has_many :ventums
	validates :correo, :ci, uniqueness: true
end
