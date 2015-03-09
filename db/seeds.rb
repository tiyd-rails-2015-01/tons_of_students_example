# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

now = Time.now

number_of_schools = 100
number_of_majors = 1000
number_of_students = 100000
number_of_grades = 500000

number_of_schools.times do
  School.create(name: Faker::Company.name)
end

number_of_majors.times do
  Major.create(name: Faker::Commerce.department,
    school_id: rand(number_of_schools)+1)
end

number_of_students.times do
  Student.create(first_name: Faker::Name.name.split.first,
    last_name: Faker::Name.name.split.last,
    major_id: rand(number_of_majors)+1)
end

number_of_grades.times do
  Grade.create(class_name: Faker::Commerce.department,
    grade: rand(101),
    student_id: rand(number_of_students)+1)
end

puts "Runtime: #{Time.now - now}"
