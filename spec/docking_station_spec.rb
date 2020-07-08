require './docking_station.rb'

describe DockingStation do

  describe '#release_bike' do    
    
    it 'releases a bike' do      
      bike = Bike.new      
      subject.dock_bike(bike)         
      expect(subject.release_bike).to eq bike 
    end

    it 'bike released is working' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike.working?).to eq true
    end
  end

  describe '#dock_bike' do
    
    it "throws an error when bike_release method called but no bikes available" do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it "20 iterations of dock_bike method on DockingStation instance is ok" do
      20.times { subject.dock_bike(Bike.new) }
      expect(subject.bikes.count).to eq 20
    end

    it "21 iterations of dock_bike method on DockingStation instance throws an error" do
      expect { 21.times { subject.dock_bike(Bike.new) } }.to raise_error 'Docking station full'
    end
  end
end