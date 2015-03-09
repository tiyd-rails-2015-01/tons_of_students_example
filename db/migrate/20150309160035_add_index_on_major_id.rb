class AddIndexOnMajorId < ActiveRecord::Migration
  def change
    add_index :students, :major_id
  end
end
