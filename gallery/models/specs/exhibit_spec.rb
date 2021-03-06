require("minitest/autorun")
require("minitest/rg")
require_relative("../exhibit")

class TestExhibit <Minitest::Test

  def setup
    options = {"id" => 1, "title" => "Scrofula & Pox", "exhibit_information" => "TEXT"}
    @exhibit = Exhibit.new(options)
  end

  def test_exhibition_title
    result = @exhibit.title
    assert_equal("Scrofula & Pox", result)
  end

  def delete_exhibit
    sql = "DELETE FROM exhiits WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end


  

#########################





end
