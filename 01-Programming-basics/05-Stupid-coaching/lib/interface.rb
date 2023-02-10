require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.

puts "Hello, I am your coach, what do you want?"
print "> "

your_message = gets.chomp # get user input

while coach_answer_enhanced(your_message) != "" # same as => until coach_answer_enhanced(your_message) == ""
  puts coach_answer_enhanced(your_message) # print coach answer
  print "> " # just to have a nice prompt in the terminal
  your_message = gets.chomp # get user input
end
