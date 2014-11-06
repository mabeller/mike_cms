class CreateMaEnrollments < ActiveRecord::Migration
  def change
    create_table :ma_enrollments do |t|
      t.integer  "geo_ID"
      t.string   "hnumber"
      t.string   "org_name"
      t.string   "org_type"
      t.string   "plan_type"
      t.integer  "enrollment"
      t.date     "enrollment_at"
      t.datetime "created_at"
    end
  end
end
