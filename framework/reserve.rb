require_relative 'resource_controller.rb'
require_relative 'resource.rb'
require_relative 'user.rb'

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
  def self.get_reserve(resource_name)
    @@reserves.find {|reserve| reserve.resource.name == resource_name}
  end

  def self.get_all
    @@reserves
  end

  def self.list
    @@reserves.each do |reserve|
      puts "----------------"
      reserve.resource.show_info
      reserve.user.show_info
      puts "----------------"
    end
  end

  def self.delete(index)
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

  def self.search_index(resource_name)
    res = nil
    @@reserves.each do |reserve|
      if reserve.resource.name == resource_name
        res = reserve
      end
    end
    @@reserves.index(res)

  end

end
