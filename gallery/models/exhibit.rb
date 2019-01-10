require_relative("../db/sql_runner")

class Exhibit

  attr_accessor :title, :exhibit_information, :category, :ex_image_1, :ex_image_2, :ex_image_3, :artist_id
  attr_reader :id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @title = options["title"]
    @exhibit_information = options["exhibit_information"]
    @category = options["category"]
    @ex_image_1 = options["ex_image_1"]
    @ex_image_2 = options["ex_image_2"]
    @ex_image_3 = options["ex_image_3"]
    @artist_id = options["artist_id"].to_i
  end

  def save()
    sql = "INSERT INTO exhibits (title, exhibit_information, category, ex_image_1, ex_image_2, ex_image_3, artist_id) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING id"
    values = [@title, @exhibit_information, @category, @ex_image_1, @ex_image_2, @ex_image_3, @artist_id]
    result = SqlRunner.run(sql, values)
    id = result.first["id"]
    @id = id.to_i
  end

#will the below method work?
  def find_creator()
    artist = Artist.find(@artist_id)
    return exhibit
  end

  def delete_exhibit()
    sql = "DELETE FROM exhibits WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def update_exhibit
    sql = "UPDATE exhibits SET ( title, exhibit_information, ex_image_1, ex_image_2, ex_image_3, category, artist_id) = ($1, $2, $3, $4, $5, $6, $7) WHERE id = $8"
    values = [@title, @exhibit_information, @category,  @ex_image_1, @ex_image_2, @ex_image_3, @artist_id, @id]
    SqlRunner.run(sql, values)
  end

  def list_artists()
    sql = "SELECT * FROM artists WHERE id = $1"
    values = [@artist_id]
    result = SqlRunner.run(sql, values)
    return result.map{|result_hash|Artist.new(result_hash)}
  end

####################

  def self.delete_all()
    sql = "DELETE FROM exhibits"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM exhibits"
    exhibits = SqlRunner.run(sql)
    result = exhibits.map{|exhibit_hash|Exhibit.new(exhibit_hash)}
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM exhibits WHERE id = $1"
    values = [id]
    exhibits = SqlRunner.run(sql, values)
    result = Exhibit.new(exhibits.first)
    return result
  end



end
