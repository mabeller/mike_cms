class CreateMaEnrollments < ActiveRecord::Migration
  def change
    create_table :ma_enrollments do |t|
      t.integer :geo_ID
      t.string :hnumber
      t.integer :enrollment
      t.date :enrollment_at

      t.timestamps
    end
  end
end
