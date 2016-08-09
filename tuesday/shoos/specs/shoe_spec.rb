require('minitest/autorun')
require('minitest/rg')
require_relative('../models/shoe')

class TestShoe < MiniTest::Test

  def setup
    @shoe = Shoe.new( {"first_name" => "Carol", "last_name" => "Burns", "address" => "The Grange, Langbank, Erskine, EK3 9JY", "shoe_size" => 6, "quantity" => 2})
  end


  def test_first_name()
    assert_equal("Carol", @shoe.first_name)
  end

  def test_last_name()
    assert_equal("Burns", @shoe.last_name)
  end

  def test_pretty_name()
    assert_equal("Carol Burns", @shoe.pretty_name())
  end

  def test_has_size()
    assert_equal(6, @shoe.shoe_size())
  end

  def test_has_quantity()
    assert_equal(2, @shoe.quantity())
  end

  def test_total()
    assert_equal(80, @shoe.total())
  end



end
