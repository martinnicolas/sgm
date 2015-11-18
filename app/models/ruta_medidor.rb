class RutaMedidor < ActiveRecord::Base
  belongs_to :rutum
  belongs_to :medidor
end
