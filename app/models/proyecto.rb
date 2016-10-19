class Proyecto < ActiveRecord::Base
    self.table_name = 'proyecto'


    belongs_to :proyecto, :class_name => 'Proyecto', :foreign_key => :users_id
    belongs_to :categorium, :class_name => 'Categorium', :foreign_key => :categoria_id
    belongs_to :user, :class_name => 'User', :foreign_key => :proyecto_apoyado
    has_many :donacions, :class_name => 'Donacion'
    has_many :galeria, :class_name => 'Galerium'
end
