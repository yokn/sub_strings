# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

# Get the word(s) and the array of substrings from the user
def substrings(words, _dict)
  i = 0
  word_array = [words]
  puts word_array
  # For every word, iterate through the substring array to see if there is a match
  # If there is a match add one to a counter for that word
  puts word_array.reduce do |acc, word|
    next unless word_array[i].to_s == word.to_s

    acc[word] += 1
    puts `'ello!`
  end
  i += 1
  puts 'hihihi'
end
# Return a hash
substrings('below', dictionary)
