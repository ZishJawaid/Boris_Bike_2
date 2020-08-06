require 'DockingStation'


describe DockingStation do

 #it { is_expected.to respond_to :release_bike }

  it 'Expects DockingStation to respond to release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  describe '#release_bike' do

    it 'raises an error if no bikes in docking station' do
      station = DockingStation.new
      expect { station.release_bike }.to raise_error ("No bikes in docking station")
    end

    it 'releases a bike' do
      station = DockingStation.new
      bike = Bike.new
      station.dock(bike)
      expect(station.release_bike).to eq bike
    end

  end


  it 'raises an error if more than one bike is docked' do

      station = DockingStation.new
      bike_1 = Bike.new
      station.dock(bike_1)
      bike_2 = Bike.new
      expect { station.dock(bike_2) }.to raise_error ("Only one bike can be docked")

  end




  it 'responds to dock method with 1 argument' do
    station = DockingStation.new
    expect(station).to respond_to(:dock).with(1).argument

  end

  it 'responds to bike method' do
    station = DockingStation.new
    expect(station).to respond_to(:bike)
  end

  it 'returns the bike that we dock' do
    station = DockingStation.new
    bike = Bike.new
    expect(station.dock(bike)).to eq bike

  end

  it 'return the bikes available' do
    station = DockingStation.new
    bike = station.dock(Bike.new)
    expect(station.bike).to eq bike

  end



end
