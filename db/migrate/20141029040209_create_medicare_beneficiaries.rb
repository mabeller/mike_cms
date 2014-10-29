class CreateMedicareBeneficiaries < ActiveRecord::Migration
  def change
    create_table :medicare_beneficiaries do |t|
      t.integer :geo_id
      t.integer :ma_enrollment
      t.integer :ffs_beneficiaries
      t.integer :eligibles
      t.float :ma_penetration
      t.date :beneficiaries_at

      t.timestamps
    end
  end
end
