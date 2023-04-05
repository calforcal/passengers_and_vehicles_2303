class Passenger
  attr_reader

  def initialize({details})
    @name = details[:name]
    @age = details[:age]
  end
end