class Reserve
  attr_accessor :date, :hour, :resource, :reserve

  @@reserves = []

  def initialize(date, hour)
    @date = date
    @hour = hour
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

end