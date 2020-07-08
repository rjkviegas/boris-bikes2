require './docking_station.rb'

describe DockingStation do

  describe '#release_bike' do
  it "(a) Test gets a bike, (b) expects bike to be working." do
  
   # expect{subject.dock_bike(Bike.new).release_bike.is_a?(Bike)}.to eq 10
    expect{subject.release_bike.working?}.to eq true
  end
end

  it "docking a bike at a docking station" do
    expect(DockingStation.new.respond_to?:dock_bike).to eq true
  end

  it "uses attribute reader to see the number of bikes" do
    expect(DockingStation.new.bikes.is_a?(Integer)).to eq true
  end

  it "throws an error when bike_release method called but no bikes available" do
    expect { DockingStation.new.release_bike }.to raise_error(RuntimeError)
  end

  it "throws an error when dock_bike method called on a DockingStation with 1 bike" do
    expect { DockingStation.new(20).dock_bike }.to raise_error(RuntimeError)
  end

  it "20 iterations of dock_bike method on DockingStation instance is ok" do
    dock1 = DockingStation.new
    20.times { dock1.dock_bike }
    expect(dock1.bikes).to eq 20
  end

  it "21 iterations of dock_bike method on DockingStation instance throws an error" do
    dock1 = DockingStation.new
    expect { 21.times { dock1.dock_bike } }.to raise_error(RuntimeError)
  end
end
