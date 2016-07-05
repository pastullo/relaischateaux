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

ActiveRecord::Schema.define(version: 20150227142639) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "assets", force: true do |t|
    t.string   "storage_uid"
    t.string   "storage_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "storage_width"
    t.integer  "storage_height"
    t.float    "storage_aspect_ratio"
    t.integer  "storage_depth"
    t.string   "storage_format"
    t.string   "storage_mime_type"
    t.string   "storage_size"
  end

  create_table "bubble_translations", force: true do |t|
    t.integer  "bubble_id",  null: false
    t.string   "locale",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "body"
  end

  add_index "bubble_translations", ["bubble_id"], name: "index_bubble_translations_on_bubble_id"
  add_index "bubble_translations", ["locale"], name: "index_bubble_translations_on_locale"

  create_table "bubbles", force: true do |t|
    t.string   "title"
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
    t.text     "body"
    t.integer  "experience_id"
    t.integer  "pos_x"
    t.integer  "pos_y"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "icon_type"
    t.text     "video"
    t.integer  "sort_order",        default: 10
  end

  add_index "bubbles", ["experience_id"], name: "index_bubbles_on_experience_id"

  create_table "consultant_translations", force: true do |t|
    t.integer  "consultant_id", null: false
    t.string   "locale",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "job"
    t.text     "review"
    t.string   "review_by"
  end

  add_index "consultant_translations", ["consultant_id"], name: "index_consultant_translations_on_consultant_id"
  add_index "consultant_translations", ["locale"], name: "index_consultant_translations_on_locale"

  create_table "consultants", force: true do |t|
    t.string   "name"
    t.string   "job"
    t.text     "review"
    t.string   "review_by"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sort_order",         default: 10
  end

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "destination_translations", force: true do |t|
    t.integer  "destination_id",    null: false
    t.string   "locale",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "location"
    t.text     "short_description"
    t.text     "about_body"
    t.text     "properties_text"
  end

  add_index "destination_translations", ["destination_id"], name: "index_destination_translations_on_destination_id"
  add_index "destination_translations", ["locale"], name: "index_destination_translations_on_locale"

  create_table "destinations", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "about_tile_file_name"
    t.string   "about_tile_content_type"
    t.integer  "about_tile_file_size"
    t.datetime "about_tile_updated_at"
    t.text     "about_body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "hero_file_name"
    t.string   "hero_content_type"
    t.integer  "hero_file_size"
    t.datetime "hero_updated_at"
    t.text     "short_description"
    t.string   "video_mp4_file_name"
    t.string   "video_mp4_content_type"
    t.integer  "video_mp4_file_size"
    t.datetime "video_mp4_updated_at"
    t.string   "video_ogg_file_name"
    t.string   "video_ogg_content_type"
    t.integer  "video_ogg_file_size"
    t.datetime "video_ogg_updated_at"
    t.string   "tile_file_name"
    t.string   "tile_content_type"
    t.integer  "tile_file_size"
    t.datetime "tile_updated_at"
    t.boolean  "footer_featured",                                  default: false
    t.string   "slug"
    t.integer  "sort_order",                                       default: 99
    t.text     "properties_text"
    t.decimal  "lat",                     precision: 10, scale: 6
    t.decimal  "lng",                     precision: 10, scale: 6
    t.integer  "zoom",                                             default: 6
  end

  add_index "destinations", ["slug"], name: "index_destinations_on_slug", unique: true

  create_table "enquires", force: true do |t|
    t.string   "full_name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "locale"
    t.text     "comments"
    t.boolean  "newsletter",    default: false
    t.string   "stay_duration"
    t.integer  "adults"
    t.integer  "children"
    t.text     "children_ages"
    t.string   "arrival_date"
    t.integer  "sequential_id"
    t.string   "ip_address"
    t.text     "clickpath"
    t.text     "entry_page"
    t.text     "referrer"
  end

  create_table "experience_stage_translations", force: true do |t|
    t.integer  "experience_stage_id",           null: false
    t.string   "locale",                        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "destination_name"
    t.text     "destination_short_description"
    t.text     "destination_long_description"
    t.text     "property_name"
    t.text     "property_short_description"
    t.text     "property_long_description"
  end

  add_index "experience_stage_translations", ["experience_stage_id"], name: "index_experience_stage_translations_on_experience_stage_id"
  add_index "experience_stage_translations", ["locale"], name: "index_experience_stage_translations_on_locale"

  create_table "experience_stages", force: true do |t|
    t.integer  "experience_id"
    t.integer  "destination_id"
    t.integer  "property_id"
    t.integer  "sort_order",                    default: 99
    t.text     "destination_name"
    t.text     "destination_short_description"
    t.text     "destination_long_description"
    t.text     "property_name"
    t.text     "property_short_description"
    t.text     "property_long_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "property_hero_file_name"
    t.string   "property_hero_content_type"
    t.integer  "property_hero_file_size"
    t.datetime "property_hero_updated_at"
    t.string   "destination_hero_file_name"
    t.string   "destination_hero_content_type"
    t.integer  "destination_hero_file_size"
    t.datetime "destination_hero_updated_at"
    t.string   "lightbox_hero_file_name"
    t.string   "lightbox_hero_content_type"
    t.integer  "lightbox_hero_file_size"
    t.datetime "lightbox_hero_updated_at"
  end

  add_index "experience_stages", ["destination_id"], name: "index_experience_stages_on_destination_id"
  add_index "experience_stages", ["experience_id"], name: "index_experience_stages_on_experience_id"
  add_index "experience_stages", ["property_id"], name: "index_experience_stages_on_property_id"

  create_table "experience_translations", force: true do |t|
    t.integer  "experience_id",     null: false
    t.string   "locale",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "title"
    t.text     "short_description"
  end

  add_index "experience_translations", ["experience_id"], name: "index_experience_translations_on_experience_id"
  add_index "experience_translations", ["locale"], name: "index_experience_translations_on_locale"

  create_table "experiences", force: true do |t|
    t.string   "title"
    t.integer  "blocksize",                     default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "color"
    t.string   "hero_file_name"
    t.string   "hero_content_type"
    t.integer  "hero_file_size"
    t.datetime "hero_updated_at"
    t.string   "hero_2_file_name"
    t.string   "hero_2_content_type"
    t.integer  "hero_2_file_size"
    t.datetime "hero_2_updated_at"
    t.text     "short_description"
    t.integer  "sort_order",                    default: 99
    t.string   "video_mp4_file_name"
    t.string   "video_mp4_content_type"
    t.integer  "video_mp4_file_size"
    t.datetime "video_mp4_updated_at"
    t.string   "video_ogg_file_name"
    t.string   "video_ogg_content_type"
    t.integer  "video_ogg_file_size"
    t.datetime "video_ogg_updated_at"
    t.integer  "second_blocksize",              default: 1
    t.string   "video_tile_mp4_file_name"
    t.string   "video_tile_mp4_content_type"
    t.integer  "video_tile_mp4_file_size"
    t.datetime "video_tile_mp4_updated_at"
    t.string   "video_tile_ogg_file_name"
    t.string   "video_tile_ogg_content_type"
    t.integer  "video_tile_ogg_file_size"
    t.datetime "video_tile_ogg_updated_at"
    t.string   "tile_file_name"
    t.string   "tile_content_type"
    t.integer  "tile_file_size"
    t.datetime "tile_updated_at"
    t.string   "tile_2_file_name"
    t.string   "tile_2_content_type"
    t.integer  "tile_2_file_size"
    t.datetime "tile_2_updated_at"
    t.boolean  "footer_featured",               default: false
    t.string   "slug"
    t.boolean  "half_height",                   default: false
    t.string   "video_tile_ogg_2_file_name"
    t.string   "video_tile_ogg_2_content_type"
    t.integer  "video_tile_ogg_2_file_size"
    t.datetime "video_tile_ogg_2_updated_at"
    t.string   "video_tile_mp4_2_file_name"
    t.string   "video_tile_mp4_2_content_type"
    t.integer  "video_tile_mp4_2_file_size"
    t.datetime "video_tile_mp4_2_updated_at"
  end

  add_index "experiences", ["slug"], name: "index_experiences_on_slug", unique: true

  create_table "featurizations", force: true do |t|
    t.integer  "room_feature_id"
    t.integer  "room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "featurizations", ["room_feature_id"], name: "index_featurizations_on_room_feature_id"
  add_index "featurizations", ["room_id"], name: "index_featurizations_on_room_id"

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "galleries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gallerizable_id"
    t.string   "gallerizable_type"
    t.integer  "sort_order",        default: 10
  end

  add_index "galleries", ["gallerizable_id", "gallerizable_type"], name: "index_galleries_on_gallerizable_id_and_gallerizable_type"

  create_table "gallery_translations", force: true do |t|
    t.integer  "gallery_id", null: false
    t.string   "locale",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "gallery_translations", ["gallery_id"], name: "index_gallery_translations_on_gallery_id"
  add_index "gallery_translations", ["locale"], name: "index_gallery_translations_on_locale"

  create_table "highlight_translations", force: true do |t|
    t.integer  "highlight_id", null: false
    t.string   "locale",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "body"
  end

  add_index "highlight_translations", ["highlight_id"], name: "index_highlight_translations_on_highlight_id"
  add_index "highlight_translations", ["locale"], name: "index_highlight_translations_on_locale"

  create_table "highlights", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "tile_file_name"
    t.string   "tile_content_type"
    t.integer  "tile_file_size"
    t.datetime "tile_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "highlightable_id"
    t.string   "highlightable_type"
    t.string   "video_tile_mp4_file_name"
    t.string   "video_tile_mp4_content_type"
    t.integer  "video_tile_mp4_file_size"
    t.datetime "video_tile_mp4_updated_at"
    t.string   "video_tile_ogg_file_name"
    t.string   "video_tile_ogg_content_type"
    t.integer  "video_tile_ogg_file_size"
    t.datetime "video_tile_ogg_updated_at"
    t.integer  "block_size",                  default: 1
    t.integer  "sort_order",                  default: 99
    t.string   "hero_file_name"
    t.string   "hero_content_type"
    t.integer  "hero_file_size"
    t.datetime "hero_updated_at"
    t.text     "video_embed"
  end

  add_index "highlights", ["highlightable_id", "highlightable_type"], name: "index_highlights_on_highlightable_id_and_highlightable_type"

  create_table "page_translations", force: true do |t|
    t.integer  "page_id",    null: false
    t.string   "locale",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "body"
  end

  add_index "page_translations", ["locale"], name: "index_page_translations_on_locale"
  add_index "page_translations", ["page_id"], name: "index_page_translations_on_page_id"

  create_table "pages", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "display_in_footer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.integer  "sort_order",        default: 99
  end

  add_index "pages", ["slug"], name: "index_pages_on_slug", unique: true

  create_table "pictures", force: true do |t|
    t.integer  "gallery_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sort_order",         default: 99
  end

  add_index "pictures", ["gallery_id"], name: "index_pictures_on_gallery_id"

  create_table "properties", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "hero_file_name"
    t.string   "hero_content_type"
    t.integer  "hero_file_size"
    t.datetime "hero_updated_at"
    t.string   "innkeeper_tile_file_name"
    t.string   "innkeeper_tile_content_type"
    t.integer  "innkeeper_tile_file_size"
    t.datetime "innkeeper_tile_updated_at"
    t.text     "innkeeper_body"
    t.boolean  "display_tile",                                         default: false
    t.text     "about_body"
    t.string   "about_tile_file_name"
    t.string   "about_tile_content_type"
    t.integer  "about_tile_file_size"
    t.datetime "about_tile_updated_at"
    t.integer  "destination_id"
    t.text     "short_description"
    t.string   "video_mp4_file_name"
    t.string   "video_mp4_content_type"
    t.integer  "video_mp4_file_size"
    t.datetime "video_mp4_updated_at"
    t.string   "video_ogg_file_name"
    t.string   "video_ogg_content_type"
    t.integer  "video_ogg_file_size"
    t.datetime "video_ogg_updated_at"
    t.text     "reviews_url"
    t.string   "tile_file_name"
    t.string   "tile_content_type"
    t.integer  "tile_file_size"
    t.datetime "tile_updated_at"
    t.boolean  "footer_featured",                                      default: false
    t.text     "innkeeper_video"
    t.string   "review_shortcode"
    t.string   "slug"
    t.integer  "sort_order",                                           default: 99
    t.text     "price_conditions"
    t.string   "hero_override_file_name"
    t.string   "hero_override_content_type"
    t.integer  "hero_override_file_size"
    t.datetime "hero_override_updated_at"
    t.text     "reviews_json"
    t.decimal  "lat",                         precision: 10, scale: 6
    t.decimal  "lng",                         precision: 10, scale: 6
    t.integer  "zoom",                                                 default: 6
  end

  add_index "properties", ["destination_id"], name: "index_properties_on_destination_id"
  add_index "properties", ["slug"], name: "index_properties_on_slug", unique: true

  create_table "property_overrides", force: true do |t|
    t.integer  "property_id"
    t.integer  "stage_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "property_hero_file_name"
    t.string   "property_hero_content_type"
    t.integer  "property_hero_file_size"
    t.datetime "property_hero_updated_at"
  end

  add_index "property_overrides", ["property_id"], name: "index_property_overrides_on_property_id"
  add_index "property_overrides", ["stage_id"], name: "index_property_overrides_on_stage_id"

  create_table "property_translations", force: true do |t|
    t.integer  "property_id",       null: false
    t.string   "locale",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "name"
    t.text     "location"
    t.text     "innkeeper_body"
    t.text     "about_body"
    t.text     "short_description"
    t.text     "innkeeper_video"
    t.text     "price_conditions"
    t.text     "reviews_json"
  end

  add_index "property_translations", ["locale"], name: "index_property_translations_on_locale"
  add_index "property_translations", ["property_id"], name: "index_property_translations_on_property_id"

  create_table "room_categories", force: true do |t|
    t.string   "name"
    t.integer  "sort_order"
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "room_categories", ["property_id"], name: "index_room_categories_on_property_id"

  create_table "room_category_translations", force: true do |t|
    t.integer  "room_category_id", null: false
    t.string   "locale",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "name"
  end

  add_index "room_category_translations", ["locale"], name: "index_room_category_translations_on_locale"
  add_index "room_category_translations", ["room_category_id"], name: "index_room_category_translations_on_room_category_id"

  create_table "room_feature_translations", force: true do |t|
    t.integer  "room_feature_id", null: false
    t.string   "locale",          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "name"
  end

  add_index "room_feature_translations", ["locale"], name: "index_room_feature_translations_on_locale"
  add_index "room_feature_translations", ["room_feature_id"], name: "index_room_feature_translations_on_room_feature_id"

  create_table "room_features", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "room_pictures", force: true do |t|
    t.string   "room_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "sort_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "room_pictures", ["room_id"], name: "index_room_pictures_on_room_id"

  create_table "room_translations", force: true do |t|
    t.integer  "room_id",          null: false
    t.string   "locale",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "name"
    t.text     "description"
    t.text     "price_conditions"
  end

  add_index "room_translations", ["locale"], name: "index_room_translations_on_locale"
  add_index "room_translations", ["room_id"], name: "index_room_translations_on_room_id"

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "room_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "from_price",       precision: 8, scale: 2
    t.string   "size"
    t.string   "price_type"
    t.text     "price_conditions"
    t.string   "currency",                                 default: "ZAR"
    t.string   "persons"
  end

  add_index "rooms", ["room_category_id"], name: "index_rooms_on_room_category_id"

  create_table "route_translations", force: true do |t|
    t.integer  "route_id",          null: false
    t.string   "locale",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "name"
    t.text     "recap"
    t.text     "short_description"
  end

  add_index "route_translations", ["locale"], name: "index_route_translations_on_locale"
  add_index "route_translations", ["route_id"], name: "index_route_translations_on_route_id"

  create_table "routes", force: true do |t|
    t.string   "name"
    t.string   "hero_file_name"
    t.string   "hero_content_type"
    t.integer  "hero_file_size"
    t.datetime "hero_updated_at"
    t.text     "recap",             limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "short_description"
    t.boolean  "footer_featured",               default: false
    t.string   "slug"
    t.string   "tile_file_name"
    t.string   "tile_content_type"
    t.integer  "tile_file_size"
    t.datetime "tile_updated_at"
    t.integer  "sort_order",                    default: 99
  end

  add_index "routes", ["slug"], name: "index_routes_on_slug", unique: true

  create_table "stage_translations", force: true do |t|
    t.integer  "stage_id",          null: false
    t.string   "locale",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "recap"
    t.text     "short_description"
  end

  add_index "stage_translations", ["locale"], name: "index_stage_translations_on_locale"
  add_index "stage_translations", ["stage_id"], name: "index_stage_translations_on_stage_id"

  create_table "stages", force: true do |t|
    t.text     "recap"
    t.integer  "destination_id"
    t.integer  "route_id"
    t.integer  "sort_order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "short_description"
    t.integer  "days",                          default: 1
    t.string   "destination_hero_file_name"
    t.string   "destination_hero_content_type"
    t.integer  "destination_hero_file_size"
    t.datetime "destination_hero_updated_at"
  end

  add_index "stages", ["destination_id"], name: "index_stages_on_destination_id"
  add_index "stages", ["route_id"], name: "index_stages_on_route_id"

  create_table "suggestions", force: true do |t|
    t.integer  "property_id"
    t.integer  "route_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "suggestions", ["property_id"], name: "index_suggestions_on_property_id"
  add_index "suggestions", ["route_id"], name: "index_suggestions_on_route_id"

  create_table "themes", force: true do |t|
    t.integer  "route_id"
    t.integer  "experience_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "themes", ["experience_id"], name: "index_themes_on_experience_id"
  add_index "themes", ["route_id"], name: "index_themes_on_route_id"

  create_table "weather_detail_translations", force: true do |t|
    t.integer  "weather_detail_id", null: false
    t.string   "locale",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "general_overview"
    t.text     "best_time"
    t.text     "high_season"
    t.text     "low_season"
    t.text     "best_weather"
    t.text     "worst_weather"
  end

  add_index "weather_detail_translations", ["locale"], name: "index_weather_detail_translations_on_locale"
  add_index "weather_detail_translations", ["weather_detail_id"], name: "index_weather_detail_translations_on_weather_detail_id"

  create_table "weather_details", force: true do |t|
    t.integer  "visitable_id"
    t.string   "visitable_type"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "january_temperature"
    t.string   "january_icon_type"
    t.integer  "january_rain_mm"
    t.string   "january_color"
    t.integer  "february_temperature"
    t.string   "february_icon_type"
    t.integer  "february_rain_mm"
    t.string   "february_color"
    t.integer  "march_temperature"
    t.string   "march_icon_type"
    t.integer  "march_rain_mm"
    t.string   "march_color"
    t.integer  "april_temperature"
    t.string   "april_icon_type"
    t.integer  "april_rain_mm"
    t.string   "april_color"
    t.integer  "may_temperature"
    t.string   "may_icon_type"
    t.integer  "may_rain_mm"
    t.string   "may_color"
    t.integer  "june_temperature"
    t.string   "june_icon_type"
    t.integer  "june_rain_mm"
    t.string   "june_color"
    t.integer  "july_temperature"
    t.string   "july_icon_type"
    t.integer  "july_rain_mm"
    t.string   "july_color"
    t.integer  "august_temperature"
    t.string   "august_icon_type"
    t.integer  "august_rain_mm"
    t.string   "august_color"
    t.integer  "september_temperature"
    t.string   "september_icon_type"
    t.integer  "september_rain_mm"
    t.string   "september_color"
    t.integer  "october_temperature"
    t.string   "october_icon_type"
    t.integer  "october_rain_mm"
    t.string   "october_color"
    t.integer  "november_temperature"
    t.string   "november_icon_type"
    t.integer  "november_rain_mm"
    t.string   "november_color"
    t.integer  "december_temperature"
    t.string   "december_icon_type"
    t.integer  "december_rain_mm"
    t.string   "december_color"
    t.text     "general_overview"
    t.text     "best_time"
    t.text     "high_season"
    t.text     "low_season"
    t.text     "best_weather"
    t.text     "worst_weather"
  end

  add_index "weather_details", ["visitable_id"], name: "index_weather_details_on_visitable_id"

end
