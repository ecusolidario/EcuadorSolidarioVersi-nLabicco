class AddHabilitad < ActiveRecord::Migration
  def change
    create_table "habilidad", force: true do |t|
	  t.string  "habilidad_nombre", limit: 250, null: false
    end
  end
end
