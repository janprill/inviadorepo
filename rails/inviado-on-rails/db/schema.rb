# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_02_091107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "commentings", force: :cascade do |t|
    t.text "description"
    t.jsonb "raw", default: {}, null: false
    t.bigint "comment_id"
    t.bigint "commentable_id"
    t.string "commentable_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comment_id"], name: "index_commentings_on_comment_id"
    t.index ["commentable_id", "commentable_type"], name: "index_commentings_on_commentable_id_and_commentable_type"
  end

  create_table "comments", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.jsonb "raw", default: {}, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "features", force: :cascade do |t|
    t.string "key"
    t.string "source"
    t.string "path"
    t.bigint "version"
    t.string "period_desc"
    t.datetime "period"
    t.string "title"
    t.text "description"
    t.jsonb "raw", default: {}, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "ekrendite_prozent"
    t.integer "mitarbeiter"
    t.decimal "kassenbestand_eur"
    t.decimal "personalaufwand_pro_mitarbeiter_eur"
    t.decimal "umsatzrendite_prozent"
    t.decimal "umsatz_pro_mitarbeiter_eur"
    t.index ["period_desc", "source"], name: "index_features_on_period_desc_and_source", unique: true
  end

  create_table "featurings", force: :cascade do |t|
    t.bigint "featurable_id"
    t.string "featurable_type"
    t.text "description"
    t.jsonb "raw", default: {}, null: false
    t.bigint "feature_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["featurable_id", "featurable_type"], name: "index_featurings_on_featurable_id_and_featurable_type"
    t.index ["feature_id"], name: "index_featurings_on_feature_id"
  end

  create_table "linkings", force: :cascade do |t|
    t.text "description"
    t.jsonb "raw", default: {}, null: false
    t.bigint "link_id"
    t.bigint "linkable_id"
    t.string "linkable_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["link_id"], name: "index_linkings_on_link_id"
    t.index ["linkable_id", "linkable_type"], name: "index_linkings_on_linkable_id_and_linkable_type"
  end

  create_table "links", force: :cascade do |t|
    t.string "title"
    t.string "target"
    t.string "uri"
    t.string "description"
    t.string "source"
    t.boolean "is_active", default: true
    t.jsonb "raw", default: {}, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["title"], name: "index_links_on_title", unique: true
    t.index ["uri"], name: "index_links_on_uri", unique: true
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "bio"
    t.jsonb "raw", default: {}, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.text "description"
    t.jsonb "raw", default: {}, null: false
    t.bigint "member_id"
    t.bigint "membershipable_id"
    t.string "membershipable_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["member_id"], name: "index_memberships_on_member_id"
    t.index ["membershipable_id", "membershipable_type"], name: "index_memberships_on_membershipable_id_and_membershipable_type"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "classification"
    t.string "name"
    t.text "description"
    t.string "uri"
    t.jsonb "raw", default: {}, null: false
    t.boolean "is_active", default: true
    t.bigint "corporate_form_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "notes"
    t.string "source"
    t.boolean "has_devs_on_xing"
    t.bigint "created_at_epoch"
    t.bigint "updated_at_epoch"
    t.index ["created_at_epoch"], name: "index_organizations_on_created_at_epoch"
    t.index ["name"], name: "index_organizations_on_name", unique: true
    t.index ["updated_at_epoch"], name: "index_organizations_on_updated_at_epoch"
    t.index ["uri"], name: "index_organizations_on_uri"
  end

  create_table "searchings", force: :cascade do |t|
    t.text "description"
    t.jsonb "raw", default: {}, null: false
    t.bigint "searchresult_id"
    t.bigint "searchable_id"
    t.string "searchable_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["searchable_id", "searchable_type"], name: "index_searchings_on_searchable_id_and_searchable_type"
    t.index ["searchresult_id"], name: "index_searchings_on_searchresult_id"
  end

  create_table "searchresults", force: :cascade do |t|
    t.string "query"
    t.string "source"
    t.jsonb "results", default: {}, null: false
    t.jsonb "raw", default: {}, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.text "description"
    t.jsonb "raw", default: {}, null: false
    t.bigint "tag_id"
    t.bigint "taggable_id"
    t.string "taggable_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type"], name: "index_taggings_on_taggable_id_and_taggable_type"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.jsonb "raw", default: {}, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
