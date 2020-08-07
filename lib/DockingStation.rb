require_relative 'Bike'

class DockingStation

attr_reader :bike_array, :capacity

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bike_array = []
  end

  def release_bike
    raise "No bikes available" if empty?
    @bike_array.pop
  end

  def dock(bike)
    raise "Docking station full" if full?
    @bike_array << bike

  end

  private

  def full?
    @bike_array.length >= @capacity
  end

  def empty?
    @bike_array.empty?
  end

end
