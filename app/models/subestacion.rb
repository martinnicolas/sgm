class Subestacion < ActiveRecord::Base
	def to_s
		self.nombre
	end
end
