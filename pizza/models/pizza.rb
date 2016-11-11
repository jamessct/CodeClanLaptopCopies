require('pry-byebug')
require('pg')
class Pizza

  attr_accessor( :first_name, :last_name, :topping, :quantity )
   
  def Pizza.all()
    db = PG.connect( { dbname: 'pizza_shop', host: 'localhost' } )
    sql = "SELECT * FROM pizzas;"
    pizzas = db.exec(sql)
    pizza_objects = pizzas.map { |options| Pizza.new(options) }
    db.close
    return pizza_objects
  end

  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @topping = options['topping']
    @quantity = options['quantity'].to_i
    @id = options['id'].to_i if options['id']
  end

  def update ()
    db = PG.connect( { dbname: 'pizza_shop', host: 'localhost' } )
    sql = "UPDATE pizzas SET 
    first_name = '#{@first_name}', 
    last_name = '#{@last_name}', 
    topping = '#{@topping}', 
    quantity = #{@quantity}, 
    WHERE id = #{@id}"
    db.exec(sql)
    db.close()
  end

  def delete ()
    db = PG.connect( { dbname: 'pizza_shop', host: 'localhost' } )
    sql = "DELETE FROM pizzas WHERE id = '#{@id}'"
    db.exec(sql)
    db.close()
  end
  #   @first_name = nil
  #   @last_name = nil
  #   @quantity = nil
  #   @id = nil
  #   return result
  # end

  def save()
    db = PG.connect( { dbname: 'pizza_shop', host: 'localhost'} )
    sql = " INSERT INTO pizzas (
      first_name,
      last_name,
      topping,
      quantity ) VALUES (
        '#{@first_name}',
        '#{@last_name}',
        '#{@topping}',
        '#{@quantity}'
      ) returning *;
    "
    result = db.exec( sql )
    @id = result[0]['id']
    db.close()
  end
end

# pizza2 = Pizza.new( {
#   'first_name' => 'Rick',
#   'last_name' => 'Bob',
#   'topping' => 'cheese',
#   'quantity' => '1'
#   })

# pizza2.save()
# puts pizza2
# pizza2.topping = "Pepperoni"
# puts pizza2
# pizza2.update
# puts Pizza.all.last.inspect

# pizza1.save()



binding.pry
nil