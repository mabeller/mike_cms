class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :parent_id
      t.datetime :acquired_at
      t.timestamps
    end
  end
end
