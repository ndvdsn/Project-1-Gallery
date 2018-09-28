require_relative("../db/sql_runner")

class Exhibit

  attr_reader :id, :title, :exhibit_information, :artist_id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @title = options["title"]
    @exhibit_information = options["exhibit_information"]
    @artist_id = options["id"].to_i
  end




end
