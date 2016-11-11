class Animal < ActiveRecord::Base
  def move
    return "nope" if !legs 
    return "walk" if legs > 0
    return "slither" if legs == 0 
  end
end
