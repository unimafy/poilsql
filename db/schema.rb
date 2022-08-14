# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_220_814_114_206) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'employees', force: :cascade do |t|
    t.string 'name'
    t.float 'salary'
    t.bigint 'role_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['role_id'], name: 'index_employees_on_role_id'
  end

  create_table 'performance_reviews', force: :cascade do |t|
    t.integer 'score'
    t.bigint 'employee_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['employee_id'], name: 'index_performance_reviews_on_employee_id'
  end

  create_table 'roles', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'vacations', force: :cascade do |t|
    t.datetime 'starts_on'
    t.datetime 'ends_on'
    t.integer 'days'
    t.bigint 'employee_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['employee_id'], name: 'index_vacations_on_employee_id'
  end

  add_foreign_key 'employees', 'roles'
  add_foreign_key 'performance_reviews', 'employees'
  add_foreign_key 'vacations', 'employees'
end
