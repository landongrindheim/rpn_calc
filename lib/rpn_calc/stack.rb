module RpnCalc
  class Stack
    def initialize(*args)
      @stack = args
    end

    def <<(other)
      stack << other.to_f
      value_as_float_or_integer
    end

    def perform(operator)
      validate_operations(operator)
      was_last = stack.pop.to_f
      stack[-1] = stack[-1].send(operator, was_last)
      value_as_float_or_integer
    end

    private

    attr_reader :stack

    def validate_operations(operator)
      raise 'not enough values to perform operation' if stack.size < 2
      raise 'cannot divide by zero' if operator == '/' && stack.last == 0
    end

    def value_as_float_or_integer
      last % 1 == 0 ? last.to_i : last
    end

    def last
      stack.last
    end
  end
end
