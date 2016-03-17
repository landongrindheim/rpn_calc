module RpnCalc
  class NumberHandler
    def initialize(stack)
      @stack = stack
    end

    def process(input)
      stack << input
    end

    private

    attr_reader :stack

  end
end
