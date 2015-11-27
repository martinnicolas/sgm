class Medidor < ActiveRecord::Base
  belongs_to :cliente

  def to_s
	self.nombre
  end
end
