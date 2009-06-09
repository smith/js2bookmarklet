require File.dirname(__FILE__) + '/test_helper.rb'

class TestJs2bookmarklet < Test::Unit::TestCase
  def setup
    @in = File.open("test/fixtures/script.js").read
    @out = Js2bookmarklet.new(@in).bookmarkletify
  end
  
  def test_bookmarkletify
    # Is the output a string?
    assert_equal(String, @out.class)

    # Is the output one line?
    line_count = 0
    @out.each_line {|line| line_count += 1 }
    assert_equal(1, line_count)
  end
end
