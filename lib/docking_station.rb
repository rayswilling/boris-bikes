class DockingStation
  def release_bike
    Bike.new
  end

  def dock(bike)
    "Bike docked"
  end
end

class Bike
  def working?
    true
  end
end
