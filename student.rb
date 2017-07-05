require_relative 'framework/user.rb'

class Student < User
  attr_accessor :semester, :curso

  def initialize(name, user_code, permission, semester, curso)
    @semester = semester
    @curso = curso
    super(name, user_code, permission)
  end

  def show_info
    puts "Nome do Aluno:  #{name}"
    puts "Matrícula:  #{user_code}"
    puts "Semestre:  #{semester}"
    puts "Curso:  #{curso}"
    puts "\n"
  end


end
