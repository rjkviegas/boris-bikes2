require './lib/bike.rb'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.count == 0
      fail
    else
      @bikes.pop 
    end
  end

  def dock_bike(bike)
    if @bikes >= 20
      fail
    else
      @bikes += 1
    end
  end

end
