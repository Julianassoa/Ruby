def coach_answer(your_message)
  # 1. if I say a random sentence then => I don't care, get dressed and go to work!
  # 2. If I ask a question => Silly question, get dressed and go to work!
  # 3. if I say I am going to work right now! => coach will leave us be
  if your_message.downcase == 'i am going to work right now!'
    return ""
  elsif your_message.include?('?') # your_message.end_with?('?')
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  # I can feel your motivation! => if we shout
  answer = coach_answer(your_message)
  if answer == "" || (answer != "" && your_message != your_message.upcase)
    return answer
  else # elsif your_message == your_message.upcase
    return "I can feel your motivation! #{answer}"
  end
end

# puts coach_answer_enhanced("i want some pizza!")
