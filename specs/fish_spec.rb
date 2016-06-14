require('minitest/autorun')
require_relative('../fish')

class TestFish < MiniTest::Test

  def setup()
    @nemo = Fish.new("Nemo")
  end

  def test_return_name()
    assert_equal("Nemo", @nemo.name)
  end
  
end