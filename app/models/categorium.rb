class Categorium < ActiveRecord::Base



    belongs_to :categorium, :class_name => 'Categorium', :foreign_key => :categoria_id
    has_many :proyectos, :class_name => 'Proyecto'
end
