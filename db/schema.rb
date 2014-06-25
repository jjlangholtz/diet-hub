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

ActiveRecord::Schema.define(version: 20140624221753) do

  create_table "dieters", force: true do |t|
    t.string   "name"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diets", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dieter_id"
  end

  add_index "diets", ["dieter_id"], name: "index_diets_on_dieter_id"

  create_table "diets_recipes", id: false, force: true do |t|
    t.integer "diet_id"
    t.integer "recipe_id"
  end

  create_table "food_groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "recipe_id"
  end

  add_index "food_groups", ["recipe_id"], name: "index_food_groups_on_recipe_id"

  create_table "foods", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "edible_id"
    t.string   "edible_type"
  end

  add_index "foods", ["edible_id", "edible_type"], name: "index_foods_on_edible_id_and_edible_type"

  create_table "grocery_lists", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dieter_id"
  end

  add_index "grocery_lists", ["dieter_id"], name: "index_grocery_lists_on_dieter_id"

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "food_group_id"
  end

  add_index "recipes", ["food_group_id"], name: "index_recipes_on_food_group_id"

end
