class Bike
  def alert
    "BRRRRING"
  end

  def accelerate
    "Pedal pedal"
  end
end

class BikeWithHorn < Bike
  def alert
    "Honk Honk"
  end
end

class ElectricBike < Bike
  def accelerate
    "HUMMMMMMMM"
  end
end

class ElectricBikeWithHorn < BikeWithHorn
  def accelerate
    "HUMMMMMMMM"
  end
end


bike = Bike.new()
puts bike.accelerate()
puts bike.alert()

bikeWithHorn = BikeWithHorn.new()
puts bikeWithHorn.accelerate()
puts bikeWithHorn.alert()

electricBike = ElectricBike.new
puts electricBike.accelerate()
puts electricBike.alert()