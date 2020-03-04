require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../river")
require_relative("../fish")

class TestRiver < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
  end

  def test_river_has_name()
    assert_equal("Amazon", @river.name)
  end

  def test_river_has_fish()
    assert_equal(100, @river.fish_stock)
  end













end
