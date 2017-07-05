require 'date'
require_relative 'reserve.rb'
require_relative 'resource.rb'

module ResourceController
  def reserve_resource(resource_name)
    res = Resource.get_by(name: resource_name)
  	if Reserve.search_reservation(res)
  		puts "Recurso não disponível!"
  	else
      Reserve.new(DateTime.now.to_time, res, self)
      puts "Reserva feita com sucesso!"
    end
  end

  def free_resource(resource_name)
      res = Resource.get_by(name: resource_name)
      Reserve.delete(Reserve.search_index(res.name))
      puts "Reserva liberada!"
  end
end
