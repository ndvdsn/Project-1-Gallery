require_relative("../db/sql_runner")

class Exhibit

  attr_accessor :title, :exhibit_information, :category
  attr_reader :id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @title = options["title"]
    @exhibit_information = options["exhibit_information"]
    @category = options["category"]
  end

  def save()
    sql = "INSERT INTO exhibits (title, exhibit_information, category) VALUES ($1, $2, $3) RETURNING id"
    values = [@title, @exhibit_information, @category]
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
    sql = "UPDATE exhibits SET ( title, exhibit_information, category) = ($1, $2, $3) WHERE id = $4"
    values = [@title, @exhibit_information, @category]
    SqlRunner.run(sql, values)
  end

  def list_exhibits()
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
    sql = "INSERT * FROM exhibits"
    exhibits = SqlRunner.run(sql)
    result = exhibit.map{|exhibit_hash|Exhibit.new(exhibit_hash)}
    return result
  end



end
