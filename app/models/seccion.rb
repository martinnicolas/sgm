class Seccion < ActiveRecord::Base
  belongs_to :subestacion

  def to_s
	"#{self.nombre}, (#{Subestacion.find(self.subestacion_id).to_s})"
  end
end
