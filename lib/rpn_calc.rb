require_relative 'rpn_calc/version'
require_relative 'rpn_calc/stack'
require_relative 'rpn_calc/calculator'

module RpnCalc
  def self.start
    stack = Stack.new
    calculator = Calculator.new(stack)
    
    puts 'enter q to exit program'
    print '>'
    STDIN.each_line do |line|
      input = line.chomp
      puts calculator.process(input)
      print '>'
    end
  end

  at_exit { puts 'bye' }
end
