require('pg')
require_relative('../db/sql_runner')

class Artist

  attr_reader( :id, :name )

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def self.find(id)
    sql = "SELECT * FROM artists WHERE id = #{id};"
    artist = SqlRunner.run(sql).first
    return Artist.new(artist)
  end

  def self.all
    sql = "SELECT * FROM artists;"
    artists = SqlRunner.run(sql)
    result = artists.map { |artist| Artist.new(artist)}
    return result
  end

  def save
    sql = "INSERT INTO artists (name) VALUES ('#{@name}') RETURNING *;"
    artist = SqlRunner.run( sql ).first
    @id = artist['id'].to_i
  end

  def albums
    sql = "SELECT name FROM albums WHERE artist_id = #{@id};"
    albums = SqlRunner.run(sql)
    # return albums
    result = albums.map { |albums| Album.new (albums) }
    return result
  end

end