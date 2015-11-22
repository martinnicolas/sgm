class Tomaestado < ActiveRecord::Base
  belongs_to :user

  def to_s
	"(#{self.dni}) - #{self.apellido}, #{self.nombre}"
  end
end
