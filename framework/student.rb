require_relative 'user.rb'

class Student < User
  attr_accessor :semester, :curso 

  
  def show_info
    puts "Nome do Aluno:  #{name}"
    puts "Matrícula:  #{user_code}"
    puts "Semestre:  #{semester}"
    puts "Curso:  #{curso}"
  end

  
end
