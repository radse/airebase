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

ActiveRecord::Schema.define(version: 20160618024101) do

  create_table "aires", force: :cascade do |t|
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "marca",                    limit: 255
    t.string   "modelo_conjunto",          limit: 255
    t.string   "modelo_ui",                limit: 255
    t.string   "modelo_ue",                limit: 255
    t.string   "dimensiones_ui",           limit: 255
    t.string   "dimensiones_ue",           limit: 255
    t.string   "eficiencia_refrigeracion", limit: 255
    t.string   "eficiencia_calefaccion",   limit: 255
    t.integer  "consumo_refrigeracion",    limit: 4
    t.integer  "consumo_calefaccion",      limit: 4
    t.integer  "corriente_refrigeracion",  limit: 4
    t.integer  "corriente_calefaccion",    limit: 4
    t.integer  "capacidad_refrigeracion",  limit: 4
    t.integer  "capacidad_calefaccion",    limit: 4
    t.integer  "peso_ui",                  limit: 4
    t.integer  "peso_ue",                  limit: 4
  end

end
