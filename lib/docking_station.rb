class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if bikes.empty?
      raise 'no bikes'
    else
      Bike.new
    end
  end

  def dock(bike)
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
