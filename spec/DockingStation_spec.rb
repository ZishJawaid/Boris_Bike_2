require 'DockingStation'


describe DockingStation do

 #it { is_expected.to respond_to :release_bike }
 
  it 'Expects DockingStation to respond to release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'Expects bike to be working' do
    bike = subject.release_bike
    expect(bike).to be_working
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
