require "./lib/vehicle"
require "./lib/passenger"

RSpec.describe Vehicle do
  before(:each) do
    @vehicle = Vehicle.new("2001", "Honda", "Civic") 
  end

  describe "#initialize" do
    it "initializes" do
      expect(@vehicle).to be_an_instance_of(Vehicle)
    end

    it "initializes with attributes" do
      expect(@vehicle.year).to eq("2001")
      expect(@vehicle.make).to eq("Honda")
      expect(@vehicle.model).to eq("Civic")
    end
  end
end