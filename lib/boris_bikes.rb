class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :capacity
  attr_reader :bikes
  @capacity = DEFAULT_CAPACITY
  def initialize
    @bikes = []
    # @bikes.push(Bike.new)
  end

  def release_bike
    if empty?
      raise "No bikes available"
    else
      Bike.new
    end
  end

  def dock_bike(bike)
    if full?
      raise "Docking station full"
    else
      @bikes.push(bike)
    end
  end

  def check_bike
    @bikes[-1]
  end

  private

  def full?
    if @bikes.count >= DEFAULT_CAPACITY
      true
    else
      false
    end
  end

  def empty?
    if @bikes.count < 1
      true
    else
      false
    end
  end

end

class Bike
  def initialize

  end

  def working?
    true
  end
end
