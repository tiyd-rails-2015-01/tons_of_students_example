class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :grade
      t.string :class_name
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
