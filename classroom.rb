require_relative 'framework/resource.rb'

class Classroom < Resource
  attr_accessor :room_number, :room_building

  
  def show_info
    puts "Nome do Recurso:  #{name}"
    puts "Descrição:  #{description}"
    puts "N* da Sala:  #{room_number}"
    puts "Localização:  #{room_building}"
  end

  
end

