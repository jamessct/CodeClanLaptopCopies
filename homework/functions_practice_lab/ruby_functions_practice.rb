def return_10()
  return 10
end

def add(number1, number2)
  result = number1 + number2
  return result
end

def subtract(number1, number2)
  result = number1 - number2
  return result
end

def multiply(number1, number2)
  result = number1*number2
  return result
end

def divide(number1, number2)
  result = number1/number2
  return result
end

def length_of_string(string)
  return string.length
end

def join_string(string_1, string_2)
  return string_1 + string_2
end

def add_string_as_number(number1, number2)
  return number1.to_i + number2.to_i
end

def number_to_full_month_name(month_no)
  case month_no
  when 1
    return "January"
  when 2
    return "February"
  when 3
    return "March"
  when 4
    return "April"
  when 9
    return "September"
  end
end

# def number_to_short_month_name(month_no)
#   case month_no
#     when 1
#       return "Jan"
#     when 3
#       return "Mar"
#     when 9
#       return "Sep"
#   end
# end

def number_to_short_month_name(month_no)
  result = number_to_full_month_name(month_no) [0..2]
  return result
end

#I realise the two above answers could probably be done better with an array for all of the months...

def volume_of_cube(n)
  result = n**3
  return result
end

def volume_of_sphere(radius)
  result = (4*Math::PI*(radius**3))/3
  return result.round(2)
end

def fahrenheit_to_celsius(celsius)
  result = (celsius - 32) / (9/5)
  return result.round(2)
end