def add_array_length(array_1, array_2)
  return array_1.length + array_2.length
end

def add_array_elements(data)
  total = 0
  for elements in data
    total = total + elements
  end
  return total
end

def find_item?(array, item)
  for elements in array
    if elements == item
      return true
    end
  end
  return false
end

def first_key_name(hash)
  return hash.keys[0]
end

def array_of_capitals(countries)
  capitals = []
  for (*, country) in countries
    capitals.push(country[:capital])
  end
  return capitals
end



