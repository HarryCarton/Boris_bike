require_relative './Bojo_bikes'

class DockingStation 

  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    return @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

end