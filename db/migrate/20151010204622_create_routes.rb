class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.integer :cost
      t.integer :time_in_mins
      t.references :zone1, index: true
      t.references :zone2, index: true

      t.timestamps null: false
    end
    add_foreign_key :routes, :zone1s
    add_foreign_key :routes, :zone2s
  end
end
