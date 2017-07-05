class Reserve
  attr_accessor :date, :resource, :user
  @@reserves = []

  def initialize(date, resource, user)
    @date = date
    @resource = resource
    @user = user
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

  def self.search_reservation(resource)
   @@reserves.each do |reservation|
      if reservation.resource == resource
           return true
      end
    end
    false
  end

  def self.search_index(resource)
    index = 0
    @@reverse.each do |reservation|
      if reservation.resource == resource
        return index
      end
      index++
    end
    index
  end

end
