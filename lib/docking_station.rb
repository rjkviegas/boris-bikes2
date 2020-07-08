require './lib/bike.rb'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.count == 0
      raise 'No bikes available'
    else
      @bikes.pop 
    end
  end

  def dock_bike(bike)
    if @bikes.count >= 20
      raise 'Docking station full'
    else
      @bikes << bike
    end
  end

end
