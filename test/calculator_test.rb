require 'test_helper'
module RpnCalc
  class CalculatorTest < Minitest::Unit::TestCase
    def setup
      @stack = Stack.new
      @stack << 5
      @stack << 1
    end

    def test_that_calculator_processes_integers
      calculator = Calculator.new(@stack)
      assert_equal 9, calculator.process(9)
    end

    def test_that_calculator_processes_float
      calculator = Calculator.new(@stack)
      assert_equal 9.5, calculator.process(9.5)
    end

    def test_that_calculator_processes_addition_operator 
      calculator = Calculator.new(@stack)
      assert_equal 6, calculator.process('+')
    end
    
    def test_that_calculator_processes_subtraction_operator 
      calculator = Calculator.new(@stack)
      assert_equal 4, calculator.process('-')
    end
   
    def test_that_calculator_processes_multiplication_operator
      calculator = Calculator.new(@stack)
      assert_equal 5, calculator.process('*')
    end

    def test_that_calculator_processes_division_operator
      calculator = Calculator.new(@stack)
      assert_equal 5, calculator.process('/')
    end

    def test_that_calculator_rejects_an_invalid_string
      calculator = Calculator.new(@stack)
      assert_equal "numbers or operators only, please",  calculator.process('BLAH')
    end
  end
end
