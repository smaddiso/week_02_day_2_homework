require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class TestBear < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly", [0])
    @fish1 = Fish.new("Fergus")
    @fish2 = Fish.new("Finlay")
    @fish3 = Fish.new("Fiona")
    @river = River.new("Amazon")
  end

  def test_bear_has_name()
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_has_type()
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_can_roar()
    assert_equal("Roar!", @bear.bear_can_roar())
  end

  def test_bear_starts_with_empty_stomach()
    assert_equal(0, @bear.fish_in_stomach_count())
  end

  def test_eat_a_fish()
    @bear.eat_fish(@fish1)
    assert_equal(1, @bear.fish_in_stomach_count())
  end

  def test_eat_a_fish_from_river()
    @bear.eat_fish(@fish1)
    assert_equal(1, @bear.fish_in_stomach_count())
    assert_equal(99, @river.fish_eaten_by_bear())
  end

end
