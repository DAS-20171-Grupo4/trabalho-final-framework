require_relative 'resource.rb'
require_relative 'resource_controller.rb'

class User
  attr_accessor :name, :user_code, :permission, :user
  include ResourceController
  @@users = []

  def initialize(name, user_code, permission)
    @name = name
    @user_code = user_code
    @permission = permission
    @@users.push self
  end

  # FrozenSpots
  def self.get_all
    @@users
  end

  def self.list
    @@users.each do |user|
      user.show_info
    end
  end

  def self.get_by(opt)
    @@users.find {|user| user.send(opt.keys.first.to_s.slice(0, opt.keys.first.size)) == opt[opt.keys.first]}
  end

  def list_user_resources
    all_resources = Reserve.get_all
    all_resources.each do |resource|
      if resource.user == self
        resource.show_info
      end
    end
  end

  def self.delete(index)
    @@users.delete_at(index)
  end

  # HotSpots
  def show_info
  end

  def check_name_size
  end

  def check_user_code_size
  end

  def check_permission_size
  end
end
