class Tomaestado < ActiveRecord::Base
  belongs_to :user

  def to_s
	self.nombre
  end
end
