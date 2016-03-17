require 'test_helper'
module RpnCalc
  class StackTest < Minitest::Unit::TestCase
    def test_that_it_accepts_integer_as_input
      stack = Stack.new
      assert stack << 9
    end

    def test_that_it_accepts_float_as_input
      stack = Stack.new
      assert stack << 9.5
    end

    def test_that_stack_returns_input_value
      stack = Stack.new
      assert_equal 9, stack << 9
    end

    def test_that_stack_accepts_multiple_inputs
      stack = Stack.new
      assert stack << 9 << 7
    end

    def test_that_perform_method_performs_addition
      stack = Stack.new(7,8)
      assert_equal 15, stack.perform('+')
    end

    def test_that_perform_method_performs_subtraction
      stack = Stack.new(15,11)
      assert_equal 4, stack.perform('-')
    end
    
    def test_that_perform_method_performs_division
      stack = Stack.new(15, 5)
      assert_equal 3, stack.perform('/')
    end
   
    def test_that_perform_method_performs_multiplication
      stack = Stack.new(7, 8)
      assert_equal 56, stack.perform('*')
    end

    def test_that_non_integer_quotient_is_float
      stack = Stack.new(7, 2)
      assert_equal 3.5, stack.perform('/')
    end

    def test_that_zero_cannot_be_divided_by
      stack = Stack.new(7, 0)
      assert_raises RuntimeError do
        stack.perform('/')
      end
    end

    def test_that_at_least_two_values_are_present_for_operation
      stack = Stack.new(4)
      assert_raises RuntimeError do
        stack.perform('+')
      end
    end
  end
end
