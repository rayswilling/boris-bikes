class DockingStation
DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity= DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise 'no bikes' unless empty?
    Bike.new

    # replaced with the above guard clause ^
    # if bikes.empty?
    #   raise 'no bikes'
    # else
    #   Bike.new
    # end
  end

private
  def empty?
    bikes.length > 0
  end
public

  def dock(bike)
    #raise 'docking station full' if bikes.length == 20
    raise 'docking station full' unless full?
    bikes << bike
    "Bike docked"
  end

private
  def full?
    bikes.length < @capacity
  end
public

  def list_bikes
    bikes
  end
end

class Bike
  def working?
    true
  end
end
