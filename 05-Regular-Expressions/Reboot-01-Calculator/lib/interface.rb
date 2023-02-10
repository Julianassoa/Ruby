require_relative "calculator"
# 1. Welcome message to the user
puts "Welcome!"
puts ""
# 2. Ask the user for the first number
calculator_on = true
while calculator_on
  puts "Please enter a number"
  # 3. Store it
  first_number = gets.chomp.to_i
  # 4. Ask the user for the second number
  puts "Please enter another number"
  # 5. Store it
  second_number = gets.chomp.to_i
  # 6. Ask which operation (+, -, *, /)
  puts "What operation would you like to do? [+ - * /]"
  operator = gets.chomp
  # 7. CALCULATE
result = calculate(first_number, second_number, operator)
#  if operator == '+'
#    result = first_number + second_number
#  elsif operator == '-'
#    result = first_number - second_number
#  elsif operator == '*'
#    result = first_number * second_number
#  elsif operator == '/'
#    result = first_number.to_f / second_number
#  else
#    result = nil
#    puts "Invalid!"
#  end
  # 8. Display the result to the user
if
  result != nil
puts "#{first_number} #{operator} #{second_number} = #{result}"
end

  puts "Would you like to continue? [y/n]"
  answer = gets.chomp
  calculator_on = answer == 'y'
end

puts "Bye bye"
