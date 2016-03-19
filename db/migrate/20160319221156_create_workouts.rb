class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :level
      t.integer :diff
      t.datetime :start_time
      t.datetime :end_time
      t.string :s1_type
      t.integer :s1_dis
      t.string :s2_type
      t.integer :s2_dis
      t.string :s3_type
      t.integer :s3_dis
      t.string :s4_type
      t.integer :s4_dis
      t.string :s5_type
      t.integer :s5_dis
      t.string :s6_type
      t.integer :s6_dis

      t.timestamps null: false
    end
  end
end
