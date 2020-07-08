require './docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it "(a) Test gets a bike, (b) expects bike to be working." do
    expect(DockingStation.new(1).release_bike.is_a?(Bike)).to eq true
    expect(DockingStation.new(1).release_bike.working?).to eq true
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
    expect { DockingStation.new(1).dock_bike }.to raise_error(RuntimeError)
  end
end
