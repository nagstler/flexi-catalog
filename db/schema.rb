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

ActiveRecord::Schema[7.0].define(version: 2023_04_09_021150) do
  create_table "billing_addresses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "order_id"
    t.string "name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "postal_code"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_billing_addresses_on_order_id"
  end

  create_table "brands", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "variant_id"
    t.integer "quantity"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_inventories_on_location_id"
    t.index ["product_id"], name: "index_inventories_on_product_id"
    t.index ["variant_id"], name: "index_inventories_on_variant_id"
  end

  create_table "locations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "product_id"
    t.bigint "variant_id"
    t.integer "quantity"
    t.decimal "price", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
    t.index ["variant_id"], name: "index_order_items_on_variant_id"
  end

  create_table "order_status_histories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "order_status_id"
    t.text "notes"
    t.datetime "status_changed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_status_histories_on_order_id"
    t.index ["order_status_id"], name: "index_order_status_histories_on_order_status_id"
  end

  create_table "order_statuses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "order_number"
    t.decimal "total", precision: 10
    t.decimal "shipping_cost", precision: 10
    t.decimal "tax_amount", precision: 10
    t.bigint "shipping_method_id"
    t.bigint "tax_rate_id"
    t.string "customer_name"
    t.string "customer_email"
    t.string "customer_phone"
    t.text "special_instructions"
    t.text "internal_notes"
    t.json "metadata"
    t.bigint "order_status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_status_id"], name: "index_orders_on_order_status_id"
    t.index ["shipping_method_id"], name: "index_orders_on_shipping_method_id"
    t.index ["tax_rate_id"], name: "index_orders_on_tax_rate_id"
  end

  create_table "product_collections", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collection_id"], name: "index_product_collections_on_collection_id"
    t.index ["product_id"], name: "index_product_collections_on_product_id"
  end

  create_table "product_images", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "product_id"
    t.string "image_url"
    t.integer "position"
    t.string "alt_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_images_on_product_id"
  end

  create_table "product_properties", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_property_values", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "property_id"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_property_values_on_product_id"
    t.index ["property_id"], name: "index_product_property_values_on_property_id"
  end

  create_table "product_tags", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_tags_on_product_id"
    t.index ["tag_id"], name: "index_product_tags_on_tag_id"
  end

  create_table "products", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "category_id"
    t.bigint "brand_id"
    t.decimal "price", precision: 10
    t.decimal "compare_at_price", precision: 10
    t.string "sku"
    t.string "barcode"
    t.string "erp_product_reference_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "shipping_addresses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "order_id"
    t.string "name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "postal_code"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_shipping_addresses_on_order_id"
  end

  create_table "shipping_methods", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.bigint "zone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["zone_id"], name: "index_shipping_methods_on_zone_id"
  end

  create_table "shipping_rates", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "shipping_method_id"
    t.decimal "rate", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shipping_method_id"], name: "index_shipping_rates_on_shipping_method_id"
  end

  create_table "tags", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tax_categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tax_rates", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "tax_category_id"
    t.bigint "zone_id"
    t.decimal "rate", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tax_category_id"], name: "index_tax_rates_on_tax_category_id"
    t.index ["zone_id"], name: "index_tax_rates_on_zone_id"
  end

  create_table "variant_images", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "variant_id"
    t.string "image_url"
    t.integer "position"
    t.string "alt_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["variant_id"], name: "index_variant_images_on_variant_id"
  end

  create_table "variant_property_values", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "variant_id"
    t.bigint "property_id"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_variant_property_values_on_property_id"
    t.index ["variant_id"], name: "index_variant_property_values_on_variant_id"
  end

  create_table "variants", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "product_id"
    t.decimal "price", precision: 10
    t.decimal "compare_at_price", precision: 10
    t.string "sku"
    t.string "barcode"
    t.string "erp_variant_reference_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_variants_on_product_id"
  end

  create_table "zone_members", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "zone_id"
    t.string "zoneable_type"
    t.bigint "zoneable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["zone_id"], name: "index_zone_members_on_zone_id"
    t.index ["zoneable_type", "zoneable_id"], name: "index_zone_members_on_zoneable"
  end

  create_table "zones", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "billing_addresses", "orders"
  add_foreign_key "inventories", "locations"
  add_foreign_key "inventories", "products"
  add_foreign_key "inventories", "variants"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "products"
  add_foreign_key "order_items", "variants"
  add_foreign_key "order_status_histories", "order_statuses"
  add_foreign_key "order_status_histories", "orders"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "orders", "shipping_methods"
  add_foreign_key "orders", "tax_rates"
  add_foreign_key "product_collections", "collections"
  add_foreign_key "product_collections", "products"
  add_foreign_key "product_images", "products"
  add_foreign_key "product_property_values", "product_properties", column: "property_id"
  add_foreign_key "product_property_values", "products"
  add_foreign_key "product_tags", "products"
  add_foreign_key "product_tags", "tags"
  add_foreign_key "products", "brands"
  add_foreign_key "products", "categories"
  add_foreign_key "shipping_addresses", "orders"
  add_foreign_key "shipping_methods", "zones"
  add_foreign_key "shipping_rates", "shipping_methods"
  add_foreign_key "tax_rates", "tax_categories"
  add_foreign_key "tax_rates", "zones"
  add_foreign_key "variant_images", "variants"
  add_foreign_key "variant_property_values", "product_properties", column: "property_id"
  add_foreign_key "variant_property_values", "variants"
  add_foreign_key "variants", "products"
  add_foreign_key "zone_members", "zones"
end
