require 'DockingStation'

describe DockingStation do

  it 'Expects DockingStation to respond to release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'responds to dock method with 1 argument' do
    station = DockingStation.new
    expect(station).to respond_to(:dock).with(1).argument
  end

  it 'responds to bike method' do
    station = DockingStation.new
    expect(station).to respond_to(:bike_array)
  end

  it 'returns the bikes available' do
    station = DockingStation.new
    bike = station.dock(Bike.new)
    expect(station.bike_array).to eq bike

  end

  describe '#release_bike' do

    it 'releases a bike' do
      station = DockingStation.new
      bike = Bike.new
      station.dock(bike)
      expect(station.release_bike).to eq bike
    end

    it 'raises an error if no bikes available in docking station' do
      station = DockingStation.new
      expect { station.release_bike }.to raise_error ("No bikes available")
    end

  end

  describe '#dock' do

    it 'returns the bike that we dock' do
      station = DockingStation.new
      bike = Bike.new
      expect(station.dock(bike)).to eq [bike]
    end
    it 'raises an error if docking station is full' do
      station = DockingStation.new
      DockingStation::DEFAULT_CAPACITY.times { station.dock(Bike.new) }
      expect { station.dock(Bike.new) }.to raise_error ("Docking station full")
    end

  end

    it 'allows a user to set docking station capacity' do
      station = DockingStation.new
      expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

end
