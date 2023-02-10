def palindrome?(a_string)
  # TODO: check if a_string is a palindrome
  just_letters = a_string.gsub(/[^a-zA-Z]/, "").downcase
  return false if just_letters.empty?

  just_letters == just_letters.reverse
end
