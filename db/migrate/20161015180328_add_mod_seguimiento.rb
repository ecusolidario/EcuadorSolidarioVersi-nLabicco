class AddModSeguimiento < ActiveRecord::Migration
  def change
    rename_column :seguimiento, :proyecto_id, :donacion_id
  end
end
