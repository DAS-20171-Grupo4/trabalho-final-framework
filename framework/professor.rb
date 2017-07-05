require_relative 'user.rb'
require_relative 'classroom.rb'
require_relative 'reserve.rb'

class Professor < User
  attr_accessor :course, :area 

  
  def show_info
    puts "Nome do Professor:  #{name}"
    puts "Matrícula:  #{user_code}"
    puts "Diisciplina:  #{course}"
    puts "Área:  #{area}"
  end

  
end

#TESTANDOOO

if __FILE__ == $0
  prof = Professor.new("Jose","1234","yes")
  

  prof.course = "Software"
  prof.area = "Computação"

  rs = Classroom.new("Sala de reuniao","Sala para realizaçaõ ...","123")

  rs.room_number = "3"
  rs.room_building= "Software"

  reserva = Reserve.new("23-05-2017")


  prof.reserve_resource(rs, reserva)
  rs.user.show_info
  puts reserva.date


end