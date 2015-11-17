class Cliente < ActiveRecord::Base
	def to_s
		"(#{self.dni}) #{self.apellido}, #{self.nombre}"
	end
end
