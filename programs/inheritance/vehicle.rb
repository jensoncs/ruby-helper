class Vehicle
  attr_writer :type, :engine

  def info
    return "#{@type}-#{@engine}"
  end
end
