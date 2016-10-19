# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161017162607) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: true do |t|
    t.string  "categoria_nombre", limit: 250, null: false
    t.integer "categoria_id",     limit: 8
  end

  add_index "categoria", ["categoria_nombre"], name: "un_categoria_nombre", unique: true, using: :btree

  create_table "donacion", force: true do |t|
    t.integer  "recurso_cantidad",  limit: 8, default: 1, null: false
    t.integer  "proyecto_id",       limit: 8,             null: false
    t.integer  "recurso_id",        limit: 8,             null: false
    t.datetime "create_at"
    t.integer  "transporte_id",     limit: 8,             null: false
    t.integer  "user_id",           limit: 8
    t.string   "donacion_img_path"
    t.string   "donacion_detalle"
  end

  create_table "galeria", force: true do |t|
    t.text     "galeria_detalle"
    t.boolean  "galeria_tipo"
    t.integer  "proyecto_id",         limit: 8
    t.boolean  "galeria_seguimiento",           default: false, null: false
    t.datetime "create_at",                                     null: false
  end

  create_table "habilidad", force: true do |t|
    t.string "habilidad_nombre", limit: 250, null: false
  end

  create_table "proyecto", force: true do |t|
    t.text     "proyecto_nombre",                                           null: false
    t.integer  "proyecto_cantidad_beneficiarios", limit: 8, default: 1,     null: false
    t.float    "proyecto_latitud",                                          null: false
    t.float    "proyecto_longitud",                                         null: false
    t.float    "proyecto_porcent"
    t.text     "proyecto_descripcion_corta",                                null: false
    t.text     "proyecto_descripcion_larga",                                null: false
    t.integer  "users_id",                        limit: 8, default: 1,     null: false
    t.integer  "categoria_id",                    limit: 8, default: 1,     null: false
    t.datetime "created_at",                                                null: false
    t.integer  "proyecto_apoyado",                limit: 8
    t.boolean  "proyecto_posee_transporte",                 default: false, null: false
    t.string   "proyecto_tags"
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

  create_table "seguimiento", force: true do |t|
    t.float    "seguimiento_latitud",            null: false
    t.float    "seguimiento_longitud",           null: false
    t.text     "seguimiento_img_path",           null: false
    t.text     "seguimiento_detalle",            null: false
    t.datetime "seguimiento_at",                 null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "user_id",              limit: 8
    t.integer  "donacion_id",          limit: 8
  end

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
    t.string   "documento"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "voluntario_habilidad", id: false, force: true do |t|
    t.integer "user_id",      limit: 8, null: false
    t.integer "habilidad_id", limit: 8, null: false
  end

  add_index "voluntario_habilidad", ["user_id", "habilidad_id"], name: "un_voluntario_hailidad", unique: true, using: :btree

  create_table "voluntario_recurso", id: false, force: true do |t|
    t.integer "user_id",    limit: 8,             null: false
    t.integer "recurso_id", limit: 8, default: 1, null: false
  end

  add_index "voluntario_recurso", ["user_id", "recurso_id"], name: "voluntario_recurso_un", unique: true, using: :btree

end
