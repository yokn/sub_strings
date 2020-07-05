# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

# Get the word(s) and the array of substrings from the user
def substrings(*words, dict)
  i = 0
  word_array = [*words]
  result_array = []
  # For every word, iterate through the substring array to see if there is a match
  # If there is a match add one to a counter for that word
  while i < word_array.length
    result_array[i] = word_array[i] if dict.include?(word_array[i])
    i += 1
  end
  puts result_array.each_with_object(Hash.new(0)) { |word, acc| acc[word] += 1; }
end
# Return a hash
substrings('below', 'down', 'this string does not exist', dictionary)
