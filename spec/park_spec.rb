require "./lib/passenger"
require "./lib/vehicle"
require "./lib/park"

RSpec.describe Park do
  before(:each) do
    @water_world = Park.new("Water World", 20)
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
  end

  describe "#initialize" do
    it "initializes" do
      expect(@water_world).to be_an_instance_of(Park)
    end

    it "initializes with attributes" do
      expect(@water_world.name).to eq("Water World")
      expect(@water_world.admission_price).to eq(20)
    end
  end

  describe "#add_vehicle" do
    it "starts with no vehicles" do
      expect(@water_world.vehicles).to eq([])
    end

    it "can add vehicles to the park" do
      @water_world.add_vehicle(@vehicle)
      expect(@water_world.vehicles).to eq([@vehicle])
    end
  end
end