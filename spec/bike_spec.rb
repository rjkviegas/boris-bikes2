require 'bike.rb'

describe Bike do
  it 'Instances of Bike to repsond to method working?' do
    expect(Bike.new.respond_to?:working?).to eq true
  end
end
