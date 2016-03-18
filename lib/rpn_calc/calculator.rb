module RpnCalc
  class Calculator
    def initialize(stack)
      @stack = stack
    end

    def process(input)
      dispatch_based_on_input(input)
    rescue => e
      e.message
    end

    private

    attr_reader :stack

    def dispatch_based_on_input(input)
      case
      when number?(input)
        stack << input
      when valid_operator?(input)
        stack.perform(input)
      when input.downcase == 'q'
        exit
      else
        'numbers or operators only, please'
      end
    end

    VALID_OPERATORS = %w( + - * / ).freeze

    def valid_operator?(input)
      VALID_OPERATORS.include?(input)
    end

    def number?(input)
      !Float(input).nil? rescue false
    end
  end
end
