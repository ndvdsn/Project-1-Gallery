require("minitest/autorun")
require("minitest/rg")
require_relative("../exhibit")

class TestExhibit <Minitest::Test

  def setup
    options = {"id" => 1, "title" => "Scrofula & Pox", "ex_image_1" => "/images/rachel_lowther_1.jpg", "ex_image_2" => "/images/rachel_lowther_2.jpg", "ex_image_3" => "/images/rachel_lowther_3.jpg", "exhibit_information" => "TEXT"}
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
