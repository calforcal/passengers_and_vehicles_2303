class Park
  attr_reader :name, :admission_price, :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passengers
    park_attendees = @vehicles.map { |vehicle| vehicle.passengers }.flatten
  end

  def revenue
    num_adult_attendees = passengers.find_all { |passenger| passenger.adult? }.count
    num_adult_attendees * admission_price
  end

  def all_attendees
    attendees = passengers.map { |passenger| passenger.name }.sort
  end

  def minors
    minors_objects = passengers.find_all { |passenger| passenger.adult? == false }
    minors_list = minors_objects.map { |minor| minor.name }.sort
  end

  def adults
    adult_objects = passengers.find_all { |passenger| passenger.adult? }
    adults_list = adult_objects.map { |adult| adult.name }.sort
  end
end