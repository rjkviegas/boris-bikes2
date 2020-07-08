require './lib/bike.rb'

class DockingStation
  attr_reader :bikes

  def initialize(number_of_bikes =0)
    @bikes = number_of_bikes
  end

  def release_bike
    if @bikes == 0
      fail
    else
      @bikes -= 1
      Bike.new 
    end
  end

  def dock_bike
    @bikes += 1
  end

end
