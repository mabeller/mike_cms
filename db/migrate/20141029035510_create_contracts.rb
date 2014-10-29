class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :plan_id
      t.string :hnumber
      t.string :organization
      t.string :plan_type

      t.timestamps
    end
  end
end
