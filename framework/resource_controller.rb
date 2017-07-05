require_relative 'reserve.rb'

module ResourceController
  def reserve_resource(resource)
  	if Reserve.search_reservation(resource)
  		puts "Recurso não disponível!"
  	else
      resource.user = self
      reserve.resource = resource
      puts "Reserva feita com sucesso!"
    end
  end

  def free_resource(resource)
      resource.user = nil
      reserve.delete(Reserve.search_index(resource))
      puts "Reserva liberada!"
  end
end
