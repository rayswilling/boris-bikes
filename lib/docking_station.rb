class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'no bikes' unless bikes.length > 0
    Bike.new

    # replaced with the above guard clause ^
    # if bikes.empty?
    #   raise 'no bikes'
    # else
    #   Bike.new
    # end
  end

  def dock(bike)
    raise 'docking station full' unless bikes.length == 0
    bikes << bike
    "Bike docked"
  end

  def list_bikes
    bikes
  end
end

class Bike
  def working?
    true
  end
end
