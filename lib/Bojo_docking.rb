require 'Bojo_bikes'

class DockingStation 

  attr_reader :bike

  def release_bike
    return Bike.new
  end

  def dock_bike(bike)
    @bike = bike
  end

end