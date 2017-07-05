module ResourceController
  def reserve_resource(resource, reserve)
      resource.user = self
      reserve.resource = resource
      puts "Reserva feita com sucesso!"
  end

  def free_resource(resource, reserve)
      resource.user = nil
      reserve.delete(resource)
      puts "Reserva cancelada!"
  end
end
