class AddVoluntario < ActiveRecord::Migration
  def change
    create_table "voluntario_habilidad", id: false, force: true do |t|
      t.integer "user_id",      limit: 8,             null: false
      t.integer "habilidad_id",     limit: 8,             null: false
    end
    create_table "voluntario_recurso", id: false, force: true do |t|
      t.integer "user_id",      limit: 8,             null: false
      t.integer "recurso_id", limit: 8, default: 1, null: false
    end
  end
end
