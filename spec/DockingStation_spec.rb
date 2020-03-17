require 'boris_bikes'

describe DockingStation do
  it "responds to #release_bike" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  subject(:station) { described_class.new }

  describe "#release_bike" do
    it "returns a instance of the Bike class" do
      expect(station.release_bike).to be_instance_of(Bike)
    end
  end

  describe "bike" do
    it "#working? method returns true" do
      expect(station.release_bike.working?).to eq true
    end
  end

  it "it responds to the #dock_bike method with 1 argument" do
      expect(DockingStation.new).to respond_to(:dock_bike).with(1).argument
  end

end

describe Bike do

  subject(:bike) { described_class.new }

  it "Users bike is docked using the #dock_bike function" do
    expect(DockingStation.new.dock_bike(bike)).to have_attributes(:docked_bike => bike)
  end
  
end