require("minitest/autorun")
require("minitest/rg")
require_relative("../artist")

class TestArtist < Minitest::Test

  def setup

    options = {"id" => 21, "first_name" => "Rachel", "last_name" => "Lowther", "artist_information" => "TEXT"}
    @artist = Artist.new(options)
  end

  def test_first_name
    result = @artist.first_name
    assert_equal("Rachel", result)
  end

  def test_last_name
    result = @artist.last_name
    assert_equal("Lowther", result)
  end


end
