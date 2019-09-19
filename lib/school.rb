class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student, level)
    roster[level] ||= []
    roster[level] << student
  end 
  
  def grade(level)
    roster.detect { |grade_level, students| 
    if grade_level == level 
      return students
    end 
    }
  end 
  

def sort 
  nu_hash = {}
  roster.each { |grade_level, students| 
    nu_hash[grade_level] = students.sort 
  }
  nu_hash
end 
  
end 
