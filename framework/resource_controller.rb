module ResourceController
  def reserve_resource(resource, reserve)
  	if reserve.search_reservation(reserve, resource) 
  		puts "Recurso não disponível!!"
  	else
      resource.user = self
      reserve.resource = resource
      puts "Reserva feita com sucesso!"
    end
  end

  def free_resource(resource, reserve, index)
      resource.user = nil
      reserve.delete(index)
      puts "Reserva cancelada!"
  end
end
