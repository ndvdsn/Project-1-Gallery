require_relative('../db/sql_runner')

class Artist

  attr_accessor :first_name, :last_name, :information
  attr_reader :id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @first_name = options["first_name"]
    @last_name = options["last_name"]
    @artist_information = options["artist_information"]
  end

  def save()
    sql = "INSERT INTO artists (first_name, last_name, artist_information) VALUES ($1, $2, $3) RETURNING id"
    values = [@first_name, @last_name, @artist_information]
    result = SqlRunner.run(sql, values)
    id = result.first["id"]
    @id = id
  end

#########

  def self.delete_all()
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "INSERT * FROM artists"
    artists = SqlRunner.run(sql)
    result = artists.map{|artist_hash|Artist.new(artist_hash)}
    return result
  end

end
