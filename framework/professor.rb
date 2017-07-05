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
  reserva.resource.show_info

  puts ("------------")

  rs2 = Classroom.new("Sala 2","Sala para realizaçaõ ...","123")

  rs2.room_number = "3"
  rs2.room_building= "Software"

  reserva3 = Reserve.new("23-05-2017")


  prof.reserve_resource(rs2, reserva3)
  rs2.user.show_info
  puts reserva3.date
  reserva3.resource.show_info

  puts ("------------")


  reserva2 = Reserve.new("23-05-2017")


  prof.reserve_resource(rs, reserva2)
  puts reserva2.date



  prof.free_resource(rs, reserva, 0)

  puts ("------------")


  reserva4 = Reserve.new("23-05-2017")


  prof.reserve_resource(rs, reserva4)
  puts reserva4.date
  reserva4.resource.show_info


end