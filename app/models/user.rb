class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role, :class_name => 'Role', :foreign_key => :role_id
  has_many :proyectos, :class_name => 'Proyecto'
end
