class CreateRoutines < ActiveRecord::Migration[5.2]
  def change
    create_table :routines do |t|

      t.integer :user_id
      t.integer :exercise_id
      t.integer :set
      t.integer :rep

      t.timestamps
    end
  end
end
