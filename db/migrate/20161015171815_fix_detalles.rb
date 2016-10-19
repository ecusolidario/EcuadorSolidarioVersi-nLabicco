class FixDetalles < ActiveRecord::Migration
  def change
    remove_column :proyecto, :proyecto_categoria
    add_column :proyecto, :proyecto_tags, :string
    add_column :donacion, :user_id, :bigint
    add_column :donacion, :donacion_img_path, :string
    add_column :donacion, :donacion_detalle, :string
  end
end
