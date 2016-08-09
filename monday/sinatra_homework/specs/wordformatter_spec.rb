require('minitest/autorun')
require('minitest/rg')
require_relative('../models/wordformatter')

class TestWordFormatter < MiniTest::Test

  # can also set up an instance within a method rather than in the set up at the top of the test - allows you to set up different instances within different tests

  def setup
      @wordformatter = WordFormatter.new("code clan")
  end

  def test_upcase ()
    # e.g. wordformatter = WordFormatter.new("code clan")
    assert_equal("CODE CLAN", @wordformatter.upcase())
  end

  def test_camel_case ()
    # e.g. wordformetter = WordFormatter.new("code clan")
    assert_equal("codeClan", @wordformatter.camel_case())
  end


end