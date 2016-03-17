module RpnCalc
  class OperatorHandler
    def initialize(stack)
      @stack = stack
    end

    def process(input)
      stack.perform(input)
    end

    private

    attr_reader :stack

  end
end
