require('minitest/autorun')
require_relative('../bears')
require_relative('../river')
require_relative('../fish')

class TestBears < MiniTest::Test

  def setup()
    fish1 = Fish.new("Nemo")
    fish2 = Fish.new("Marlin")
    fish3 = Fish.new("Dory")
    fish4 = Fish.new("Bubbles")
    fish5 = Fish.new("Peaches")

    fishes = [fish1, fish2, fish3, fish4, fish5]
    @thames = River.new(fishes)
    @yogi_bear = Bear.new("Yogi", "Grizzly")
  end

  def test_roar()
    assert_equal('Roar!', @yogi_bear.roar())
  end

  def test_return_name()
    assert_equal('Yogi', @yogi_bear.name)
  end

  def test_return_species()
    assert_equal('Grizzly', @yogi_bear.species)
  end

  def test_return_tummy_contents()
    assert_equal([], @yogi_bear.tummy)
  end

  def test_eat_fish_from()
    @yogi_bear.eat_fish_from(@thames)
    assert_equal( 4, @thames.total_fish() )
    assert_equal( 1, @yogi_bear.total_fish_eaten() )
  end

  def test_eat_fish_from_8times()
    8.times { @yogi_bear.eat_fish_from(@thames) }
    assert_equal( 0, @thames.total_fish() )
    assert_equal( 5, @yogi_bear.total_fish_eaten() )
  end

end