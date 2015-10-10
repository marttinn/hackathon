class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.string :agebs
      t.integer :life_cost
      t.integer :working_population
      t.integer :total_population
      t.integer :student_population
      t.float :geo_latitude
      t.float :geo_longitude
      t.string :name

      t.timestamps null: false
    end
  end
end
