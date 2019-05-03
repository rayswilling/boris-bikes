require 'docking_station'

describe DockingStation do
DEFAULT_CAPACITY = 20
  # it 'does it release' do
  #   ds = DockingStation.new
  #   expect(ds.release_bike).to eq(true)
  # end

  it 'does it respond to release' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'gives me a bike' do
    ds = DockingStation.new
    bike = Bike.new
    #bike = ds.release_bike
    expect(bike.working?).to eq(true)
  end

  it 'docks a bike' do
    ds = DockingStation.new
    bike = Bike.new
    #bike = ds.release_bike
    expect(ds.dock(bike)).to eq('Bike docked')
  end

  it 'lists docked bikes' do
    ds = DockingStation.new
    bike = Bike.new
    #bike = ds.release_bike
    ds.dock(bike)
    expect(ds.list_bikes).to eq([bike])
  end

  it 'gives an error if no bikes docked' do
    ds = DockingStation.new
    expect{ds.release_bike}.to raise_error ('no bikes')
  end

  it 'gives an error when docking station is full at 20' do
    ds = DockingStation.new
    DEFAULT_CAPACITY.times do
      ds.dock(Bike.new)
    end
    expect{ds.dock(Bike.new)}.to raise_error ('docking station full')
  end

end
