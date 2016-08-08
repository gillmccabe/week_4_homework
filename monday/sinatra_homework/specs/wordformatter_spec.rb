require('minitest/autorun')
require('minitest/rg')
require_relative('../models/wordformatter')

class TestWordFormatter < MiniTest::Test

  def setup
      @wordformatter = WordFormatter.new("code clan")
  end

  def test_upcase ()
    assert_equal("CODE CLAN", @wordformatter.upcase())
  end

  def test_camel_case ()
    assert_equal("codeClan", @wordformatter.camel_case())
  end


end