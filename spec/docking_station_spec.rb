require './docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it "(a) Test gets a bike, (b) expects bike to be working." do
    expect(DockingStation.new.release_bike.is_a?(Bike)).to eq true
    expect(DockingStation.new.release_bike.working?).to eq true
  end

  it "docking a bike at a docking station" do
    expect(DockingStation.new.respond_to?:dock_bike).to eq true
  end

  it "uses attribute reader to see the number of bikes" do
    expect(DockingStation.new.bikes).to eq 0
  end
end
