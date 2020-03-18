class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    # @bikes.push(bike)
  end

  def check_bike
    Bike.new
  end
end

class Bike
  def initialize

  end

  def working?
    true
  end
end

# test branch working
