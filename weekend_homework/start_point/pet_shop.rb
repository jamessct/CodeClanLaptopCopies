def pet_shop_name(pet_shop_hash)
  return pet_shop_hash[:name]
end

def total_cash (cash_hash)
  return cash_hash[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop_hash, transaction)
  pet_shop_hash[:admin][:total_cash] += transaction
end

def add_or_remove_cash_remove(pet_shop_hash, transaction)
  pet_shop_hash[:admin][:total_cash] -= transaction
end

def pets_sold(pet_shop_hash)
  return pet_shop_hash[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop_hash, pets_sold)
  pet_shop_hash[:admin][:pets_sold] += pets_sold
end

  def stock_count(pet_shop_hash)
    return pet_shop_hash[:pets].count
  end

def pets_by_breed(pet_shop_hash, breed)
  all_pets = pet_shop_hash[:pets]
  pet_breed = []
    for pet in all_pets
      if pet[:breed] == breed
        pet_breed.push(pet)
      end
    end
  return pet_breed
end

def find_pet_by_name(pet_shop_hash, name)
  pets_array = pet_shop_hash[:pets]
  for pets in pets_array
    if pets[:name] == name
      return pets
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop_hash, name)
  for pets in pet_shop_hash[:pets]
    if pets[:name] == name
      pet_shop_hash[:pets].delete(pets)
    end
  end
end

def add_pet_to_stock(pet_shop_hash, new_pet_hash)
  pet_shop_hash[:pets].push(new_pet_hash)
end

def customer_pet_count(customers)
  return customers[:pets].count
end

def add_pet_to_customer(customer, new_pet_hash)
  customer[:pets].push(new_pet_hash)
end

def customer_can_afford_pet(customer, new_pet_hash)
  customer_fund = customer[:cash]
if customer_fund >= new_pet_hash[:price]
  return true
    else 
  return false
end
end

