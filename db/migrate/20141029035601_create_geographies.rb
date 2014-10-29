class CreateGeographies < ActiveRecord::Migration
  def change
    create_table :geographies do |t|
      t.string :state
      t.string :county

      t.timestamps
    end
  end
end
