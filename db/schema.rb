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

ActiveRecord::Schema.define(version: 20160528200910) do

  create_table "atencions", force: :cascade do |t|
    t.date     "fecha"
    t.text     "anamnesis"
    t.integer  "temperatura"
    t.text     "mucosas"
    t.text     "palpacion"
    t.text     "diagnostico"
    t.text     "tratamiento"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "cliente_id"
    t.integer  "mascotum_id"
    t.integer  "veterinario_id"
  end

  add_index "atencions", ["cliente_id"], name: "index_atencions_on_cliente_id"
  add_index "atencions", ["mascotum_id"], name: "index_atencions_on_mascotum_id"
  add_index "atencions", ["veterinario_id"], name: "index_atencions_on_veterinario_id"

  create_table "clientes", force: :cascade do |t|
    t.integer  "ci"
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "telefono"
    t.string   "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string   "producto"
    t.integer  "costo"
    t.integer  "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "ventum_id"
  end

  add_index "lists", ["ventum_id"], name: "index_lists_on_ventum_id"

  create_table "mascota", force: :cascade do |t|
    t.string   "nombre"
    t.string   "especie"
    t.string   "raza"
    t.date     "fecha_nacimiento"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "clientes_id"
    t.integer  "cliente_id"
    t.boolean  "sexo"
    t.boolean  "esterilizado"
    t.string   "color"
  end

  add_index "mascota", ["cliente_id"], name: "index_mascota_on_cliente_id"
  add_index "mascota", ["clientes_id"], name: "index_mascota_on_clientes_id"

  create_table "prodcutos", force: :cascade do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.date     "fecha_vencimiento"
    t.integer  "cantidad"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "Precio"
  end

  create_table "turnos", force: :cascade do |t|
    t.integer  "cont"
    t.date     "actual"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "cliente_id"
    t.string   "estado"
  end

  add_index "turnos", ["cliente_id"], name: "index_turnos_on_cliente_id"

  create_table "venta", force: :cascade do |t|
    t.integer  "Costo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "cliente_id"
    t.boolean  "estado"
  end

  add_index "venta", ["cliente_id"], name: "index_venta_on_cliente_id"

  create_table "veterinarios", force: :cascade do |t|
    t.integer  "ci"
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "telefono"
    t.string   "correo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "especialidad"
  end

end
