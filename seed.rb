require_relative 'framework/reserve.rb'
require_relative 'framework/resource_controller.rb'
require_relative 'framework/resource.rb'
require_relative 'framework/user.rb'
require_relative 'professor.rb'
require_relative 'classroom.rb'
require_relative 'student.rb'

# Creating professors
puts "Criando professores"
milene = Professor.new("Milene", 1, "Professor", "Paradigmas", "Software")
mauricio = Professor.new("Mauricio", 2, "Professor", "TecProg", "Software")
carla = Professor.new("Carla", 3, "Professor", "MDS", "Software")

# Creating students
puts "Criando estudantes"
victor = Student.new("Victor", 4, "Student", "7", "Engenharia")
miranda = Student.new("Matheus", 5, "Student", "7", "Engenharia")
luiz = Student.new("Luiz", 6, "Student", "4", "Engenharia")

# Creating classrooms
puts "Criando salas de aulas"
s1 = Classroom.new("Room 1", "Room in the top floor", 1, "S1", "UED")
s2 = Classroom.new("Room 2", "Room in the top floor", 1, "S2", "UED")
s3 = Classroom.new("Room 3", "Room in the top floor", 1, "I1", "UDA")

#Creating reserves
puts "Creating reserses"
r1 = victor.reserve_resource("Room 1")
r2 = miranda.reserve_resource("Room 3")
r3 = luiz.reserve_resource("Room 2")
