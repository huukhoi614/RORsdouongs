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

ActiveRecord::Schema.define(version: 2021_11_13_011557) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
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

  create_table "banggia", force: :cascade do |t|
    t.integer "gia"
    t.date "ngaycapnhat"
    t.bigint "ctspham_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ctspham_id"], name: "index_banggia_on_ctspham_id"
  end

  create_table "chonthems", force: :cascade do |t|
    t.string "tenthanhphan"
    t.integer "gia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ct_sp_ches", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "ctspham_id", null: false
    t.bigint "dathang_id", null: false
    t.integer "soluong"
    t.integer "giact"
    t.index ["ctspham_id"], name: "index_ct_sp_ches_on_ctspham_id"
    t.index ["dathang_id"], name: "index_ct_sp_ches_on_dathang_id"
  end

  create_table "ctchonthems", force: :cascade do |t|
    t.bigint "chonthem_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "ct_sp_ch_id", null: false
    t.integer "gia"
    t.index ["chonthem_id"], name: "index_ctchonthems_on_chonthem_id"
    t.index ["ct_sp_ch_id"], name: "index_ctchonthems_on_ct_sp_ch_id"
  end

  create_table "ctkhuyenmais", force: :cascade do |t|
    t.float "tylegiam"
    t.bigint "khuyenmai_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "loaisp_id", null: false
    t.index ["khuyenmai_id"], name: "index_ctkhuyenmais_on_khuyenmai_id"
    t.index ["loaisp_id"], name: "index_ctkhuyenmais_on_loaisp_id"
  end

  create_table "ctsphams", force: :cascade do |t|
    t.bigint "sanpham_id", null: false
    t.bigint "size_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sanpham_id", "size_id"], name: "index_ctsphams_on_sanpham_id_and_size_id", unique: true
    t.index ["sanpham_id"], name: "index_ctsphams_on_sanpham_id"
    t.index ["size_id"], name: "index_ctsphams_on_size_id"
  end

  create_table "cuahangs", force: :cascade do |t|
    t.string "tencuahang"
    t.string "diachi"
    t.string "sodienthoai"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dathangs", force: :cascade do |t|
    t.date "ngaydat"
    t.date "ngayduyet"
    t.date "ngaygiao"
    t.date "ngaynhan"
    t.string "hinhthucmua"
    t.integer "phiship"
    t.integer "tonggia"
    t.bigint "order_status_id", null: false
    t.bigint "vanchuyen_id", null: false
    t.bigint "khachhang_id", null: false
    t.bigint "cuahang_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "diachinhan"
    t.string "nguoinhan"
    t.index ["cuahang_id"], name: "index_dathangs_on_cuahang_id"
    t.index ["khachhang_id"], name: "index_dathangs_on_khachhang_id"
    t.index ["order_status_id"], name: "index_dathangs_on_order_status_id"
    t.index ["vanchuyen_id"], name: "index_dathangs_on_vanchuyen_id"
  end

  create_table "khachhangs", force: :cascade do |t|
    t.string "tenKH"
    t.string "diachi"
    t.string "sodienthoai"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "khuyenmais", force: :cascade do |t|
    t.string "tendot"
    t.date "ngayBD"
    t.date "ngayKT"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "loaisps", force: :cascade do |t|
    t.string "tenloai"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nguyenlieus", force: :cascade do |t|
    t.string "tenNL"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string "tenStt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sanphams", force: :cascade do |t|
    t.string "tensanpham"
    t.bigint "loaisp_id", null: false
    t.text "mota"
    t.text "anh"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["loaisp_id"], name: "index_sanphams_on_loaisp_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.string "tensize"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sysdiagrams", primary_key: "diagram_id", id: :integer, force: :cascade do |t|
    t.string "name", null: false
    t.integer "principal_id", null: false
    t.integer "version"
    t.binary "definition"
    t.index ["principal_id", "name"], name: "UK_principal_name", unique: true
  end

  create_table "thanhphan_nguyenlieus", force: :cascade do |t|
    t.bigint "nguyenlieu_id", null: false
    t.bigint "sanpham_id", null: false
    t.string "donvitinh"
    t.float "soluong"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nguyenlieu_id"], name: "index_thanhphan_nguyenlieus_on_nguyenlieu_id"
    t.index ["sanpham_id"], name: "index_thanhphan_nguyenlieus_on_sanpham_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "hashed_password"
    t.string "salt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "phone"
    t.integer "point"
    t.index ["phone"], name: "index_users_on_phone"
  end

  create_table "vanchuyens", force: :cascade do |t|
    t.integer "khoangcach"
    t.integer "dongia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "banggia", "ctsphams"
  add_foreign_key "ct_sp_ches", "ctsphams"
  add_foreign_key "ct_sp_ches", "dathangs"
  add_foreign_key "ctchonthems", "chonthems"
  add_foreign_key "ctchonthems", "ct_sp_ches"
  add_foreign_key "ctkhuyenmais", "khuyenmais"
  add_foreign_key "ctkhuyenmais", "loaisps"
  add_foreign_key "ctsphams", "sanphams"
  add_foreign_key "ctsphams", "sizes"
  add_foreign_key "dathangs", "cuahangs"
  add_foreign_key "dathangs", "khachhangs"
  add_foreign_key "dathangs", "order_statuses"
  add_foreign_key "dathangs", "vanchuyens"
  add_foreign_key "sanphams", "loaisps"
  add_foreign_key "thanhphan_nguyenlieus", "nguyenlieus"
  add_foreign_key "thanhphan_nguyenlieus", "sanphams"
end
