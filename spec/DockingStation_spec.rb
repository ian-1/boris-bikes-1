require 'boris_bikes'

describe DockingStation do
  it "responds to #release_bike" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  subject(:station) { described_class.new }

  describe "#release_bike" do
    it "returns a instance of the Bike class" do
      station.dock_bike(Bike.new)
      expect(station.release_bike).to be_instance_of(Bike)
    end
  end

  describe "bike" do
    it "#working? method returns true" do
      station.dock_bike(Bike.new)
      expect(station.release_bike.working?).to eq true
    end
  end

  it "docking station responds to the #dock_bike method" do
    expect(DockingStation.new).to respond_to(:dock_bike)
  end

  it "docking station responds to the #dock_bike method with 1 argument" do
    expect(DockingStation.new).to respond_to(:dock_bike).with(1).argument
  end

  it "docking station responds to the #check_bike method" do
    station.dock_bike(Bike.new)
    expect(station).to respond_to(:check_bike)
  end

  it "docking station returns bike object when using the #check_bike method" do
    station.dock_bike(Bike.new)
    expect(station.check_bike).to be_instance_of(Bike)
  end

  it "docking station won't release bikes when empty" do
    expect{ DockingStation.new.release_bike }.to raise_error("No bikes available")
  end

  it "check that bikes contains 1 Bike instance we have run #dock_bike" do
    expect( DockingStation.new.dock_bike(Bike.new)[-1]).to be_instance_of(Bike)
  end

end

describe Bike do

  subject(:bike) { described_class.new }

  # it "Users bike is docked using the #dock_bike function" do
  #  expect(DockingStation.new.dock_bike(bike)).to have_attributes(:docked_bike => bike)
  # end

end
