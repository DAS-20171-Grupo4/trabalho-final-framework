class Resource
  attr_accessor :name, :description, :resource_code, :user
  @@resources = []
  @@validations = {}

  def self.validates(class_name, var)
    if @@validations[class_name].nil?
      @@validations[class_name] = []
    end
    @@validations[class_name].push(var)
  end

  def self.get_validations
    @@validations
  end

  def valid?
    valid = true
    validations = Resource.get_validations
    validations[self.class].each do |validation|
      v = send(validation)
      if !v
        valid = false
      end
    end
    valid
  end

  def initialize(name, description, resource_code)
    @name = name
    @description = description
    @resource_code = resource_code
    @user = nil
    @@resources.push self
  end

  # FrozenSpots

  def get_all
    @@resources
  end

  def self.get_by(opt)
    @@resources.find {|resource| resource.send(opt.keys.first.to_s.slice(0, opt.keys.first.size)) == opt[opt.keys.first]}
  end

  def self.list
    @@resources.each do |resource|
      resource.show_info
    end
  end

  def self.list_free
    @@resources.each do |resource|
      if user == nil
        resource.show_info
      end
    end
  end

  def self.list_taken
    @@resources.each do |resource|
      if user != nil
        resource.show_info
        resource.user.show_info
      end
    end
  end

  # HotSpots

  def show_info
  end

  def check_name_size
  end

  def check_description_size
  end

  def check_resource_code_size
  end
end
