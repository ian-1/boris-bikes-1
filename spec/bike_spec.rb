require 'boris_bikes'

describe Bike do
  it "responds to #working?" do
    expect(Bike.new).to respond_to(:working?)
  end

  subject(:bike) { described_class.new }

  describe "bike" do
    it "#working? method returns true" do
      expect(bike.working?).to eq true
    end
  end

end