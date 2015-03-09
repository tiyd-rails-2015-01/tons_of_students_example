class AddIndexOnSchoolName < ActiveRecord::Migration
  def change
    add_index :schools, :name
  end
end
