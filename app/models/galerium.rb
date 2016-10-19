class Galerium < ActiveRecord::Base



    belongs_to :proyecto, :class_name => 'Proyecto', :foreign_key => :proyecto_id
end
