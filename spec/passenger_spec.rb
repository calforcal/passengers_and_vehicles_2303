require "./lib/passenger"

RSpec.describe Passenger do
  before(:each) do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  describe "#initialize" do
    it "initializes" do
      expect(charlie).to be_an_instance_of(Passenger)
      expect(taylor).to be_an_instance_of(Passenger)
    end

    it "initializes with values" do
      expect(charlie.name).to eq("Charlie")
      expect(charlie.age).to eq(18)
    end
  end

  describe "#adult?" do
    it "can check if passengers are an adult" do
      expect(charlie.adult?).to be(true)
      expect(taylor.adult?).to be(false)
    end
  end
end