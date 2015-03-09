class Student < ActiveRecord::Base
  belongs_to :major
  has_many :grades
end
