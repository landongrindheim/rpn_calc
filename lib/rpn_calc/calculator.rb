module RpnCalc
  class Calculator 
    def initialize(stack)
      @stack = stack
    end

    def process(input)
      case
      when number?(input)
        #NumberHandler.new(stack).process(input)
        stack << input
      when valid_operator?(input)
        #OperatorHandler.new(stack).process(input)
        stack.perform(input)
      when input.downcase == 'q'
        exit
      else
        "numbers or operators only, please"
      end
    end

    private

    attr_reader :stack

    VALID_OPERATORS = %w( + - * / ).freeze

    def valid_operator?(input)
      VALID_OPERATORS.include?(input)
    end

    def number?(input)
      Float(input) != nil rescue false
    end
  end
end
