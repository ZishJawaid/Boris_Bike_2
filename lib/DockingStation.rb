require_relative 'Bike'

class DockingStation

attr_reader :bike

  def release_bike
    if @bike == nil
      raise "No bikes in docking station"
    else
      @bike
    end
  end

  def dock(bike)
    @bike = bike
  end


end
