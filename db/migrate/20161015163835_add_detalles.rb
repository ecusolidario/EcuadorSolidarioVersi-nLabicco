class AddDetalles < ActiveRecord::Migration
  def change
  end
  def self.up
    remove_column :proyecto, :proyecto_categoria
  end
  def self.down
    add_column :proyecto, :proyecto_tags, :string
    add_column :donacion, :user_id, :bigint
    add_column :donacion, :donacion_img_path, :string
    add_column :donacion, :donacion_detalle, :string
  end
end
