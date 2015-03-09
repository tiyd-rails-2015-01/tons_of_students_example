class AddIndexOnSchoolId < ActiveRecord::Migration
  def change
    add_index :majors, :school_id
  end
end
