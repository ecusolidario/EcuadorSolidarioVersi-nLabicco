class Transporte < ActiveRecord::Base
    self.table_name = 'transporte'


    has_many :donacions, :class_name => 'Donacion'
end
