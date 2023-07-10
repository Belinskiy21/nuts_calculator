# frozen_string_literal: true

require_relative 'calculator'

line_counter = 0

File.open(ARGV[0]).each do |line|
  line_counter += 1
  args = line.split(',').map(&:to_i)
  unless args.map { |num| !num.negative? }.all?
    puts "The negative number input detected on the line: #{line_counter} detected!"
    next
  end
  begin
    calculator = Calculator.new(*args)
  rescue ArgumentError
    puts "Wrong number of inputs detected on line: #{line_counter}"
    next
  end
  puts "D = #{args[0]}, N = #{args[1]}, F = #{args[2]}, C = #{args[3]}, X = #{calculator.deliverable_amount}"
end
