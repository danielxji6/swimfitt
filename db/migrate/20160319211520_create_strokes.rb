class CreateStrokes < ActiveRecord::Migration
  def change
    create_table :strokes do |t|
      t.belongs_to :workout, index: true, foreign_key: true
      t.string :type
      t.integer :laps
      t.integer :calories

      t.timestamps null: false
    end
  end
end
