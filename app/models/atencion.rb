class Atencion < ActiveRecord::Base
	belongs_to :cliente
	belongs_to :mascotum
	belongs_to :veterinario
end
