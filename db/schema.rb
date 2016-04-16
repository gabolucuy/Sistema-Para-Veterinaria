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

ActiveRecord::Schema.define(version: 20160415235917) do

  create_table "clientes", force: :cascade do |t|
    t.integer  "ci"
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "telefono"
    t.string   "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mascota", force: :cascade do |t|
    t.integer  "id_cliente"
    t.string   "nombre"
    t.string   "especie"
    t.string   "raza"
    t.date     "fecha_nacimiento"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "prodcutos", force: :cascade do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.date     "fecha_vencimiento"
    t.integer  "cantidad"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
