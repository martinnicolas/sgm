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

ActiveRecord::Schema.define(version: 20151120221114) do

  create_table "clientes", force: :cascade do |t|
    t.integer  "dni",        limit: 4
    t.string   "apellido",   limit: 255
    t.string   "nombre",     limit: 255
    t.string   "telefono",   limit: 255
    t.string   "email",      limit: 255
    t.string   "domicilio",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "medidors", force: :cascade do |t|
    t.integer  "numero",             limit: 4
    t.string   "nombre",             limit: 255
    t.string   "novedades",          limit: 255
    t.string   "novedades_criticas", limit: 255
    t.string   "latitud",            limit: 255
    t.string   "longitud",           limit: 255
    t.integer  "cliente_id",         limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "medidors", ["cliente_id"], name: "index_medidors_on_cliente_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "role_id", limit: 4
    t.integer "user_id", limit: 4
  end

  create_table "ruta", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "ruta_medidors", force: :cascade do |t|
    t.integer  "rutum_id",   limit: 4
    t.integer  "medidor_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "ruta_medidors", ["medidor_id"], name: "index_ruta_medidors_on_medidor_id", using: :btree
  add_index "ruta_medidors", ["rutum_id"], name: "index_ruta_medidors_on_rutum_id", using: :btree

  create_table "seccion_tomaestado_ruta", force: :cascade do |t|
    t.integer  "seccion_id",    limit: 4
    t.integer  "tomaestado_id", limit: 4
    t.integer  "rutum_id",      limit: 4
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "seccion_tomaestado_ruta", ["rutum_id"], name: "index_seccion_tomaestado_ruta_on_rutum_id", using: :btree
  add_index "seccion_tomaestado_ruta", ["seccion_id"], name: "index_seccion_tomaestado_ruta_on_seccion_id", using: :btree
  add_index "seccion_tomaestado_ruta", ["tomaestado_id"], name: "index_seccion_tomaestado_ruta_on_tomaestado_id", using: :btree

  create_table "seccions", force: :cascade do |t|
    t.string   "nombre",         limit: 255
    t.integer  "subestacion_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "seccions", ["subestacion_id"], name: "index_seccions_on_subestacion_id", using: :btree

  create_table "subestacions", force: :cascade do |t|
    t.string   "codigo",     limit: 255
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tomaestados", force: :cascade do |t|
    t.integer  "dni",        limit: 4
    t.string   "apellido",   limit: 255
    t.string   "nombre",     limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "tomaestados", ["user_id"], name: "index_tomaestados_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "medidors", "clientes"
  add_foreign_key "ruta_medidors", "medidors"
  add_foreign_key "ruta_medidors", "ruta"
  add_foreign_key "seccion_tomaestado_ruta", "ruta"
  add_foreign_key "seccion_tomaestado_ruta", "seccions"
  add_foreign_key "seccion_tomaestado_ruta", "tomaestados"
  add_foreign_key "seccions", "subestacions"
  add_foreign_key "tomaestados", "users"
end
