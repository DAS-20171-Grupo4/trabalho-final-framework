class Reserve
  attr_accessor :date, :resource, :reserve
  @@reserves = []

  def initialize(date)
    @date = date
    @resource = nil
    @@reserves.push self
  end

  # FrozenSpots
  def get_reserve(resource)
    @@reserves.find {|reserve| reserve.resource==resource}
  end

  def get_all
    @@reserves
  end

  def self.list
    @@reserves.each do |reserve|
      reserve.resourcer.show_info
    end
  end

  def delete(index)
    @@reserves.delete_at(index)
  end

  def search_reservation(reserve, resource)
   @@reserves.each do |reservation|
      if reservation.resource == resource && reservation.date == reserve.date
           return true
      end
    end
  return false
end

end