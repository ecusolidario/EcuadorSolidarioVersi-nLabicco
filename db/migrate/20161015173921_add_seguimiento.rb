class AddSeguimiento < ActiveRecord::Migration
  def change
    create_table :seguimiento do |t|
      t.float    "seguimiento_latitud",                                          null: false
      t.float    "seguimiento_longitud",                                         null: false
      t.text     "seguimiento_img_path",                                null: false
      t.text     "seguimiento_detalle",                                null: false
      t.datetime "seguimiento_at", null: false
      t.timestamps "create_at", null: false
    end
  end
end
