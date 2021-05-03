# frozen_string_literal: true

# Write your code for the 'Grade School' exercise in this file. Make the tests in
# `grade_school_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/grade-school` directory.
class School
  attr_reader :classrooms

  def initialize
    @classrooms = {}
  end

  def students(grade)
    classrooms[grade].nil? ? [] : sort_students(grade)
  end

  def add(name, grade)
    if classrooms[grade].nil?
      classrooms[grade] = [name]
    else
      classrooms[grade].append(name)
    end
  end

  def students_by_grade
    return [] if classrooms.empty?

    students_list = []
    sort_students.each do |key, value|
      students_list.append({ grade: key, students: value.sort })
    end
    students_list
  end

  private

  def sort_students(grade = nil)
    return classrooms.sort if grade.nil?

    classrooms[grade].sort
  end
end
