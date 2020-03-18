class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
    # @bikes.push(Bike.new)
  end

  def release_bike
    if @bikes.empty?
      raise "No bikes available"
    else
      Bike.new
    end
  end

  def dock_bike(bike)
    if @bikes.count < 20
      @bikes.push(bike)
    else
      raise "Docking station full"
    end
  end

  def check_bike
    @bikes[-1]
  end
end

class Bike
  def initialize

  end

  def working?
    true
  end
end
