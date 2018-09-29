require_relative("../db/sql_runner")

class Exhibit

  attr_accessor :title, :exhibit_information, :artist_id
  attr_reader :id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @title = options["title"]
    @exhibit_information = options["exhibit_information"]
    @artist_id = options["artist_id"].to_i
  end

  def save()
    sql = "INSERT INTO exhibits (title, exhibit_information, artist_id) VALUES ($1, $2, $3) RETURNING id"
    values = [@title, @exhibit_information, @artist_id]
    result = SqlRunner.run(sql, values)
    id = result.first["id"]
    @id = id.to_i
  end



end
