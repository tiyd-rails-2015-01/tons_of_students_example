class School < ActiveRecord::Base
  has_many :majors
  has_many :students, through: :majors
  has_many :grades, through: :students
end
