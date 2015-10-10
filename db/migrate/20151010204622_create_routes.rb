class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.integer :cost
      t.integer :time_in_mins
      t.integer :zone1
      t.integer :zone2

      t.timestamps null: false
    end
end
