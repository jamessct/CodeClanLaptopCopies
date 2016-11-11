require('pg')
require_relative('../db/sql_runner')
require_relative('book')

class Member

  attr_reader :id, :name, :address

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @address = options['address']
  end

  def save()
    sql = "INSERT INTO members (name, address) VALUES ('#{@name}', '#{@address}' ) RETURNING *"
    member = SqlRunner.run(sql).first
    @id = member['id']
  end

  def books()
    sql = "SELECT b.* FROM books b INNER JOIN rentals r ON b.id = r.book_id WHERE r.member_id = #{@id};"
    return Book.map_items(sql)
  end

  def self.all()
    sql = "SELECT * FROM members"
    return Member.map_items(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM members WHERE id = #{id}"
    return Member.map_item(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM members"
    SqlRunner.run(sql)
  end

  def self.map_items(sql)
    member = SqlRunner.run(sql)
    result = member.map { |product| Member.new( product ) }
    return result
  end

  def self.map_item(sql)
    result = map_items(sql)
    return result.first
  end
end
