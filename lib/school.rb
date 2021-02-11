require 'pry'
# code here!
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def name
        @name
    end

    def roster
        @roster
    end

    def add_student(student_name, grade)
        if @roster[grade] == nil
            @roster[grade] = [student_name]
        else
            @roster[grade] << student_name
        end
    end

    def grade(grade_number)
        @roster[grade_number]
    end

    def sort
        @returning_hash = {}
        @roster.each do |key, value|
            @returning_hash[key] = value.sort
        end
        @returning_hash
    end
end

binding.pry