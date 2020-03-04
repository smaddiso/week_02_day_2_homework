require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../fish")

class TestFish < MiniTest::Test

  def setup()
    @fish = Fish.new("Fergus")
  end

  def test_fish_has_name()
    assert_equal("Fergus", @fish.name)
  end














end
