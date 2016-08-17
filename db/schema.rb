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

ActiveRecord::Schema.define(version: 20160817140721) do

  create_table "personas", force: :cascade do |t|
    t.string   "apellido",             limit: 255
    t.string   "nombre",               limit: 255
    t.integer  "id_tipo_doc",          limit: 4
    t.integer  "doc",                  limit: 4
    t.string   "direcc",               limit: 255
    t.integer  "codido_postal",        limit: 4
    t.string   "provincia",            limit: 255
    t.string   "ciudad",               limit: 255
    t.string   "celular",              limit: 255
    t.string   "email",                limit: 255
    t.boolean  "profesional",                      default: false
    t.string   "titulo_universitario", limit: 255
    t.string   "titulo_posgrado",      limit: 255
    t.string   "especialidad",         limit: 255
    t.string   "ocupacion",            limit: 255
    t.string   "institucion",          limit: 255
    t.string   "cargo",                limit: 255
    t.integer  "telefono_prof",        limit: 4
    t.string   "email_prof",           limit: 255
    t.boolean  "menu_jueves",                      default: false
    t.boolean  "menu_viernes",                     default: false
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "tipo_docs", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
