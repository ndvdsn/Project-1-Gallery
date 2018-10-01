require_relative('../db/sql_runner')

class Artist

  attr_accessor :first_name, :last_name, :artist_information
  attr_reader :id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @first_name = options["first_name"]
    @last_name = options["last_name"]
    @artist_information = options["artist_information"]
  end

  def join_name()
    return "#{first_name}" +" " + "#{last_name}"
  end
#tested on browser

  def save()
    sql = "INSERT INTO artists (first_name, last_name, artist_information) VALUES ($1, $2, $3) RETURNING id"
    values = [@first_name, @last_name, @artist_information]
    result = SqlRunner.run(sql, values)
    id = result.first["id"]
    @id = id
  end
#database populated with seeds

  def delete_artist()
    sql = "DELETE FROM artists WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end
  #needs tested

  def update()
    sql = "UPDATE artists SET ( first_name, last_name, artist_information) = ($1, $2, $3) WHERE id = $4"
    values = [@first_name, @last_name, @artist_information, @id] #error was not having @id in here: pulls id from url etc
    SqlRunner.run(sql, values)
  end

  def list_exhibits()
    sql = "SELECT * FROM exhibits WHERE artist.id = $1"
    values = [@id]
    result = SqlRunner.run(sql, values)
    return result.map{|result_hash|Exhibit.new(result_hash)}
  end

  def self.delete_all()
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM artists"
    artists = SqlRunner.run(sql)
    result = artists.map{|artist_hash|Artist.new(artist_hash)}
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM artists WHERE id = $1"
    values = [id]
    artist = SqlRunner.run(sql, values)
    result = Artist.new( artist.first)
    return result
  end


end
