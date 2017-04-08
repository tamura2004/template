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

ActiveRecord::Schema.define(version: 20170408133420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cpu_memory_prices", force: :cascade do |t|
    t.integer "cpu"
    t.integer "memory"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disk_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disks", force: :cascade do |t|
    t.bigint "resource_id"
    t.bigint "disk_type_id"
    t.integer "sequence_number"
    t.integer "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disk_type_id"], name: "index_disks_on_disk_type_id"
    t.index ["resource_id"], name: "index_disks_on_resource_id"
  end

  create_table "divisions", force: :cascade do |t|
    t.string "number"
    t.string "name"
    t.bigint "headquarter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["headquarter_id"], name: "index_divisions_on_headquarter_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "number"
    t.string "name"
    t.bigint "division_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["division_id"], name: "index_groups_on_division_id"
  end

  create_table "headquarters", force: :cascade do |t|
    t.string "number"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "installs", force: :cascade do |t|
    t.bigint "server_id"
    t.bigint "software_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["server_id"], name: "index_installs_on_server_id"
    t.index ["software_id"], name: "index_installs_on_software_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "number"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "server_id"
    t.date "reception_date"
    t.date "start_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["server_id"], name: "index_orders_on_server_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "resources", force: :cascade do |t|
    t.bigint "server_id"
    t.bigint "cpu_memory_price_id"
    t.string "status"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cpu_memory_price_id"], name: "index_resources_on_cpu_memory_price_id"
    t.index ["server_id"], name: "index_resources_on_server_id"
  end

  create_table "server_infos", force: :cascade do |t|
    t.bigint "server_id"
    t.bigint "account_id"
    t.bigint "startup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_server_infos_on_account_id"
    t.index ["server_id"], name: "index_server_infos_on_server_id"
    t.index ["startup_id"], name: "index_server_infos_on_startup_id"
  end

  create_table "server_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servers", force: :cascade do |t|
    t.string "name"
    t.string "hostname"
    t.bigint "server_type_id"
    t.integer "sequence_number"
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["server_type_id"], name: "index_servers_on_server_type_id"
    t.index ["service_id"], name: "index_servers_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "number"
    t.string "name"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_services_on_group_id"
  end

  create_table "softwares", force: :cascade do |t|
    t.string "name"
    t.string "version"
    t.string "edition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "startups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "number"
    t.string "name"
    t.bigint "job_id"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_users_on_group_id"
    t.index ["job_id"], name: "index_users_on_job_id"
  end

  add_foreign_key "disks", "disk_types"
  add_foreign_key "disks", "resources"
  add_foreign_key "divisions", "headquarters"
  add_foreign_key "groups", "divisions"
  add_foreign_key "installs", "servers"
  add_foreign_key "installs", "softwares"
  add_foreign_key "orders", "servers"
  add_foreign_key "orders", "users"
  add_foreign_key "resources", "cpu_memory_prices"
  add_foreign_key "resources", "servers"
  add_foreign_key "server_infos", "accounts"
  add_foreign_key "server_infos", "servers"
  add_foreign_key "server_infos", "startups"
  add_foreign_key "servers", "server_types"
  add_foreign_key "servers", "services"
  add_foreign_key "services", "groups"
  add_foreign_key "users", "groups"
  add_foreign_key "users", "jobs"
end
