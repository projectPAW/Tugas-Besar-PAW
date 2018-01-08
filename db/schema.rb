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

ActiveRecord::Schema.define(version: 20171231084426) do

  create_table "materis", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "jurusan"
    t.string "mapel"
    t.string "judul"
    t.binary "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "nilais", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "mapel"
    t.string "noinduk"
    t.string "nama"
    t.integer "totnilai"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "soals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "jurusan"
    t.string "mapel"
    t.string "textsoal"
    t.binary "gambar"
    t.string "jawabanbenar"
    t.string "jawaban1"
    t.string "jawaban2"
    t.string "jawaban3"
    t.string "jawaban4"
    t.string "jawaban5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gambar_file_name"
    t.string "gambar_content_type"
    t.integer "gambar_file_size"
    t.datetime "gambar_updated_at"
  end

  create_table "teachers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "nip"
    t.string "nama"
    t.string "jenkel"
    t.string "mapel"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "noinduk"
    t.string "nama"
    t.string "jenkel"
    t.string "kelas"
    t.string "jurusan"
    t.string "sekolah"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
