require_relative "rpn_calc/version"
require_relative 'rpn_calc/stack'
require_relative 'rpn_calc/calculator'
require_relative 'rpn_calc/number_handler'
require_relative 'rpn_calc/operator_handler'

module RpnCalc
  def self.start
    stack = Stack.new
    calculator = Calculator.new(stack)
    puts 'enter q to exit program'

    loop do
      print '>'
      input = gets.chomp
      puts calculator.process(input)
    end
  end

  at_exit { puts 'bye' }
end
