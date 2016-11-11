require_relative('pet')

class PetShop

  def initialize (input_pets)
    @pets = input_pets
  end

  def pet_type(pet_name)
    result = @pets.find {|pet| pet.name == pet_name}
    return result.type
  end

  def get_names_of_all_pets_of_type(pet_type)
    pets_by_type = @pets.select {|pet| pet.type == pet_type}
    pets_by_type.map {|pet| pet.name}
  end

  def get_number_of_pets_costing_at_least(cost)
    (@pets.select {|pet| pet.price >= cost}).length
  end

end