require_relative 'Bike'

class DockingStation

attr_reader :bike_array

  def initialize
    @bike_array = []
  end

  def release_bike
    raise "No bikes available" if @bike_array.empty?
    @bike_array.pop
  end

  def dock(bike)        
    raise "Docking station full" if @bike_array.length > 20    
    @bike_array << bike
    
  end


end
