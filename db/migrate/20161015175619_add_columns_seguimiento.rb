class AddColumnsSeguimiento < ActiveRecord::Migration
  def change
  	add_column :seguimiento, :user_id, :bigint
  	add_column :seguimiento, :proyecto_id, :bigint
  end
end
