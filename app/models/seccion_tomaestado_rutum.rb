class SeccionTomaestadoRutum < ActiveRecord::Base
  belongs_to :seccion
  belongs_to :tomaestado
  belongs_to :rutum
end
