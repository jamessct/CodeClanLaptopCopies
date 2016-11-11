class Bike
  def initialize(sounder, thruster)
    @sounder = sounder
    @thruster = thruster
  end

  def alert
    @sounder.trigger()
  end

  def accelerate
    @thruster.go()
  end
end

class Bell
  def trigger
    return "Ring Ring"
  end
end

class Horn
  def trigger
    return "Honk honk"
  end
end

class Pedal
  def go
    return "Pedal pedal"
  end
end

class ElectricEngine
  def go
    return "BURRRRRRR"
  end
end

bell = Bell.new()
pedal = Pedal.new()
bike = Bike.new(bell, pedal)

puts bike.accelerate()
puts bike.alert()

horn = Horn.new
bike_with_horn = Bike.new(horn, pedal)
bike_with_horn.accelerate()
bike_with_horn.alert()

engine = ElectricEngine.new()
electric_bike = Bike.new(horn, engine)
puts electric_bike.accelerate
puts electric_bike.alert()