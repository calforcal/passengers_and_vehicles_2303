require "./lib/passenger"
require "./lib/vehicle"
require "./lib/park"

RSpec.describe Park do
  before(:each) do
    @water_world = Park.new("Water World", 20)
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @vehicle_2 = Vehicle.new("2020", "Subaru", "Forester")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    @zoe = Passenger.new({"name" => "Zoe", "age" => 15})
    @michael = Passenger.new({"name" => "Michael", "age" => 28})
    @carolyn = Passenger.new({"name" => "Carolyn", "age" => 30})
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
      @water_world.add_vehicle(@vehicle_2)
      expect(@water_world.vehicles).to eq([@vehicle, @vehicle_2])
    end
  end
end

RSpec.describe Park do
  before(:each) do
    @water_world = Park.new("Water World", 20)
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @vehicle_2 = Vehicle.new("2020", "Subaru", "Forester")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    @zoe = Passenger.new({"name" => "Zoe", "age" => 15})
    @michael = Passenger.new({"name" => "Michael", "age" => 28})
    @carolyn = Passenger.new({"name" => "Carolyn", "age" => 30})
    @vehicle.add_passenger(@charlie)
    @vehicle.add_passenger(@jude)
    @vehicle.add_passenger(@taylor)
    @vehicle_2.add_passenger(@zoe)
    @vehicle_2.add_passenger(@michael)
    @vehicle_2.add_passenger(@carolyn)
    @water_world.add_vehicle(@vehicle)
    @water_world.add_vehicle(@vehicle_2)
  end
  describe "#passengers" do
    it "can list all the passengers that have entered the park" do
      expect(@water_world.passengers).to eq([@vehicle.passengers, @vehicle_2.passengers].flatten)
    end
  end

  describe "#revenue" do
    it "can calculate the revenue based on adults and admission price" do
      expect(@water_world.revenue).to eq(80)
    end
  end

  describe "#all_attendees" do
    it "can list all attendees alphabetically" do
      expect(@water_world.all_attendees).to eq(["Carolyn", "Charlie", "Jude", "Michael", "Taylor", "Zoe"])
    end
  end

  describe "#minors & #adults" do
    it "can return a list of all minors sorted alphabetically" do
      expect(@water_world.minors).to eq(["Taylor", "Zoe"])
    end

    it "can return a list of all adults sorted alphabetically" do
      expect(@water_world.adults).to eq(["Carolyn", "Charlie", "Jude", "Michael"])
    end
  end
end