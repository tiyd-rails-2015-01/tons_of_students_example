class DashboardController < ApplicationController
  def grades_for_school
    @school = School.find_by_name(params[:name])
    @grades = @school.grades

    # @grades = Grade.joins(student: {major: :school}).where(students: {majors: {schools: {name: params[:name]}}})

    # @grades = []
    # @school.majors.each do |m|
    #   m.students.each do |s|
    #     s.grades.each do |g|
    #       @grades << g
    #     end
    #   end
    # end
  end
end
