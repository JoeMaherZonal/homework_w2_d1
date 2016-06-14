require('minitest/autorun')
require_relative('../river')
require_relative('../fish')

class TestRiver < MiniTest::Test

  def setup()
    fish1 = Fish.new("Nemo")
    fish2 = Fish.new("Marlin")
    fish3 = Fish.new("Dory")
    fish4 = Fish.new("Bubbles")
    fish5 = Fish.new("Bubbles")

    fishes = [fish1, fish2, fish3, fish4, fish5]
    @thames = River.new(fishes)
  end

  def test_total_fish()
    assert_equal( 5, @thames.total_fish() )
  end

  def test_fish_eaten()
    2.times { @thames.fish_eaten() }
    assert_equal( 3, @thames.total_fish() )
  end
  
end