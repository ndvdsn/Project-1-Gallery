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




end
