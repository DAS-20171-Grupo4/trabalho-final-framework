module ResourceController
  def reserve_resource(resource)
      resource.user = self
  end

  def free_resource(resource)
      resource.user = nil
  end
end
