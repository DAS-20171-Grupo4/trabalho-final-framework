require_relative 'framework/resource.rb'

class Classroom < Resource
  attr_accessor :room_number, :room_building

  def initialize(name, description, resource_code, room_number, room_building)
    @room_number = room_number
    @room_building = room_building
    super(name, description, resource_code)
  end

  def show_info
    puts "Nome do Recurso:  #{name}"
    puts "Descrição:  #{description}"
    puts "N* da Sala:  #{room_number}"
    puts "Localização:  #{room_building}"
    puts "\n"
  end


end
