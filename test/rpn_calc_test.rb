require 'test_helper'

class RpnCalcTest < Minitest::Test
  def setup
    @stack = ::RpnCalc::Stack.new
    @calculator = ::RpnCalc::Calculator.new(@stack)
  end

  def test_that_it_has_a_version_number
    refute_nil ::RpnCalc::VERSION
  end

  def test_that_first_gist_example_is_replicable
    assert_equal 5, @calculator.process('5')
    assert_equal 8, @calculator.process('8')
    assert_equal 13, @calculator.process('+')
  end

  def test_that_second_gist_example_is_replicable
    assert_equal -3, @calculator.process('-3')
    assert_equal -2, @calculator.process('-2')
    assert_equal 6, @calculator.process('*')
    assert_equal 5, @calculator.process('5')
    assert_equal 11, @calculator.process('+')
  end
 
  def test_that_third_gist_example_is_replicable
    assert_equal 2, @calculator.process('2')
    assert_equal 9, @calculator.process('9')
    assert_equal 3, @calculator.process('3')
    assert_equal 12, @calculator.process('+')
    assert_equal 24, @calculator.process('*')
  end

  def test_that_fourth_gist_example_is_replicable
    assert_equal 20, @calculator.process('20')
    assert_equal 13, @calculator.process('13')
    assert_equal 7, @calculator.process('-')
    assert_equal 2, @calculator.process('2')
    assert_equal 3.5, @calculator.process('/')
  end
end
