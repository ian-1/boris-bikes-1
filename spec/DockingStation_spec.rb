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
end