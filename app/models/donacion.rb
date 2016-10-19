class Donacion < ActiveRecord::Base
    self.table_name = 'donacion'


    belongs_to :proyecto, :class_name => 'Proyecto', :foreign_key => :proyecto_id
    belongs_to :transporte, :class_name => 'Transporte', :foreign_key => :transporte_id
end
