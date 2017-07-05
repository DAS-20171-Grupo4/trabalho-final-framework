require_relative 'framework/user.rb'
require_relative 'framework/reserve.rb'
require_relative 'classroom.rb'

class Professor < User
  attr_accessor :course, :area

  def initialize(name, user_code, permission, course, area)
    @course = course
    @area = area
    super(name, user_code, permission)
  end

  def show_info
    puts "Nome do Professor:  #{name}"
    puts "Matrícula:  #{user_code}"
    puts "Disciplina:  #{course}"
    puts "Área:  #{area}"
    puts "\n"
  end

end
