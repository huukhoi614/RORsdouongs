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

ActiveRecord::Schema.define(version: 2021_12_31_024654) do

  create_table "banggia", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "gia"
    t.date "ngaycapnhat"
    t.bigint "ctspham_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ctspham_id"], name: "index_banggia_on_ctspham_id"
  end

  create_table "chonthems", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "tenthanhphan"
    t.integer "gia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ct_sp_ches", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "ctspham_id", null: false
    t.bigint "dathang_id", null: false
    t.integer "soluong"
    t.integer "giact"
    t.index ["ctspham_id"], name: "index_ct_sp_ches_on_ctspham_id"
    t.index ["dathang_id"], name: "index_ct_sp_ches_on_dathang_id"
  end

  create_table "ctchonthems", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "chonthem_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "ct_sp_ch_id", null: false
    t.integer "gia"
    t.index ["chonthem_id"], name: "index_ctchonthems_on_chonthem_id"
    t.index ["ct_sp_ch_id"], name: "index_ctchonthems_on_ct_sp_ch_id"
  end

  create_table "ctkhuyenmais", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.float "tylegiam"
    t.bigint "khuyenmai_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "sanpham_id", null: false
    t.index ["khuyenmai_id"], name: "index_ctkhuyenmais_on_khuyenmai_id"
    t.index ["sanpham_id"], name: "index_ctkhuyenmais_on_sanpham_id"
  end

  create_table "ctsphams", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "sanpham_id", null: false
    t.bigint "size_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sanpham_id", "size_id"], name: "index_ctsphams_on_sanpham_id_and_size_id", unique: true
    t.index ["sanpham_id"], name: "index_ctsphams_on_sanpham_id"
    t.index ["size_id"], name: "index_ctsphams_on_size_id"
  end

  create_table "cuahangs", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "tencuahang"
    t.string "diachi"
    t.string "sodienthoai"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dathangs", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
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

  create_table "khachhangs", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "tenKH"
    t.string "diachi"
    t.string "sodienthoai"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "hashed_password"
    t.string "salt"
    t.integer "point"
    t.index ["sodienthoai"], name: "index_khachhangs_on_sodienthoai", unique: true
  end

  create_table "khuyenmais", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "tendot"
    t.date "ngayBD"
    t.date "ngayKT"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "loaisps", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "tenloai"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nguyenlieus", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "tenNL"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_statuses", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "tenStt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "quatangs", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "soluongmua"
    t.integer "soluongtang"
    t.float "giamgiathem"
    t.bigint "ctkhuyenmai_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ctkhuyenmai_id"], name: "index_quatangs_on_ctkhuyenmai_id"
  end

  create_table "sanphams", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "tensanpham"
    t.bigint "loaisp_id", null: false
    t.text "mota"
    t.text "anh"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["loaisp_id"], name: "index_sanphams_on_loaisp_id"
  end

  create_table "sizes", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "tensize"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "thanhphan_nguyenlieus", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "nguyenlieu_id", null: false
    t.bigint "sanpham_id", null: false
    t.string "donvitinh"
    t.float "soluong"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nguyenlieu_id"], name: "index_thanhphan_nguyenlieus_on_nguyenlieu_id"
    t.index ["sanpham_id"], name: "index_thanhphan_nguyenlieus_on_sanpham_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name"
    t.string "hashed_password"
    t.string "salt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "phone"
    t.integer "point"
    t.index ["phone"], name: "index_users_on_phone"
  end

  create_table "vanchuyens", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
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
  add_foreign_key "ctkhuyenmais", "sanphams"
  add_foreign_key "ctsphams", "sanphams"
  add_foreign_key "ctsphams", "sizes"
  add_foreign_key "dathangs", "cuahangs"
  add_foreign_key "dathangs", "khachhangs"
  add_foreign_key "dathangs", "order_statuses"
  add_foreign_key "dathangs", "vanchuyens"
  add_foreign_key "quatangs", "ctkhuyenmais"
  add_foreign_key "sanphams", "loaisps"
  add_foreign_key "thanhphan_nguyenlieus", "nguyenlieus"
  add_foreign_key "thanhphan_nguyenlieus", "sanphams"
end
