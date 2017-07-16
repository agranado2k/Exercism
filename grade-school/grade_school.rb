module BookKeeping
  VERSION = 3
end

class School
  attr_accessor :grades

  def students_by_grade
    grades.each_with_object([]) { |(key, value), list| list << {grade: key, students: students(key)} }.sort_by{|o| o[:grade]}
  end

  def students(grade)
    students = grades[grade] || []
    students.sort
  end

  def add(student_name, grade)
    tmp_grade = grades[grade].
    grades[grade] = [] if grades[grade].nil?
    grades[grade].push(student_name)
  end

  def initialize
    @grades = {}
  end
end