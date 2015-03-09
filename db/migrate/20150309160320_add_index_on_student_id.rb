class AddIndexOnStudentId < ActiveRecord::Migration
  def change
    add_index :grades, :student_id
  end
end
