require_relative 'user.rb'
require_relative 'classroom.rb'

class Professor < User
  attr_accessor :course, :area 

  
  def show_info
    puts "Nome do Professor:  #{name}"
    puts "Matrícula:  #{user_code}"
    puts "Diisciplina:  #{course}"
    puts "Área:  #{area}"
  end

  
end

if __FILE__ == $0
  prof = Professor.new("Jose","1234","yes")
  

  prof.course = "Software"
  prof.area = "Computação"

  prof.diz_ola

  rs = Classroom.new("Sala de reuniao","Sala para realizaçaõ ...","123")

  rs.room_number = "3"
  rs.room_building= "Software"

  rs.diz_ola


  prof.reserve_resource(rs)
  rs.user.diz_ola

end