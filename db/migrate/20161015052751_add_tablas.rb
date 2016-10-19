class AddTablas < ActiveRecord::Migration
  def change
  create_table "categoria", force: true do |t|
    t.string  "categoria_nombre", limit: 250, null: false
    t.integer "categoria_id",     limit: 8
  end

  add_index "categoria", ["categoria_nombre"], name: "un_categoria_nombre", unique: true, using: :btree

  create_table "donacion", force: true do |t|
    t.integer  "recurso_cantidad", limit: 8, default: 1, null: false
    t.integer  "proyecto_id",      limit: 8,             null: false
    t.integer  "recurso_id",       limit: 8,             null: false
    t.datetime "create_at"
    t.integer  "transporte_id",    limit: 8,             null: false
  end

  create_table "galeria", force: true do |t|
    t.text     "galeria_detalle"
    t.boolean  "galeria_tipo"
    t.integer  "proyecto_id",         limit: 8
    t.boolean  "galeria_seguimiento",           default: false, null: false
    t.datetime "create_at",                                     null: false
  end

  create_table "proyecto", force: true do |t|
    t.text     "proyecto_nombre",                                           null: false
    t.integer  "proyecto_cantidad_beneficiarios", limit: 8, default: 1,     null: false
    t.float    "proyecto_latitud",                                          null: false
    t.float    "proyecto_longitud",                                         null: false
    t.float    "proyecto_porcent"
    t.integer  "proyecto_categoria",              limit: 8, default: 1,     null: false
    t.text     "proyecto_descripcion_corta",                                null: false
    t.text     "proyecto_descripcion_larga",                                null: false
    t.integer  "users_id",                        limit: 8, default: 1,     null: false
    t.integer  "categoria_id",                    limit: 8, default: 1,     null: false
    t.datetime "created_at",                                                null: false
    t.integer  "proyecto_apoyado",                limit: 8
    t.boolean  "proyecto_posee_transporte",                 default: false, null: false
  end

  create_table "recurso", id: false, force: true do |t|
    t.integer "proyecto_id",      limit: 8,             null: false
    t.integer "categoria_id",     limit: 8,             null: false
    t.integer "recurso_cantidad", limit: 8, default: 1, null: false
  end

  add_index "recurso", ["proyecto_id", "categoria_id"], name: "un_recurso", unique: true, using: :btree

  create_table "roles", force: true do |t|
    t.string "role_nombre", limit: 250, null: false
  end

  add_index "roles", ["role_nombre"], name: "UN_role", unique: true, using: :btree

  create_table "transporte", force: true do |t|
    t.string "transporte_nombre", limit: 250
  end

  add_index "transporte", ["transporte_nombre"], name: "un_transporte_nombre", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                            default: "",    null: false
    t.string   "encrypted_password",               default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "name"
    t.datetime "date_of_birth"
    t.integer  "phone",                  limit: 8
    t.float    "latitud"
    t.float    "longitud"
    t.string   "img_path"
    t.boolean  "is_female",                        default: false
    t.integer  "role_id",                limit: 8, default: 1
    t.boolean  "vehiculo"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end
end
