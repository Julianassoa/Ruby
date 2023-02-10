def calculate(first_number, second_number, operator)
  # compute and return result
  if operator == '+'
    result = first_number + second_number
  elsif operator == '-'
    result = first_number - second_number
  elsif operator == '*'
    result = first_number * second_number
  elsif operator == '/'
    result = first_number.to_f / second_number
  else puts "Invalid operator"
  end
  return result
end
