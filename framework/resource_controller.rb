module ResourceController
  def reserve_resource(resource)
      resource.user = self
      puts "Reserva feita com sucesso!"
  end

  def free_resource(resource)
      resource.user = nil
      puts "Reserva cancelada!"
  end
end
