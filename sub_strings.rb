# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
# Get the word(s) and the array of substrings from the user
def substrings(words, dict)
  i = 0
  # https://stackoverflow.com/a/25454566
  word_array = words.downcase.sub(/[^\w\s]/, '').split
  # word_array = word_array.join.
  puts word_array
  result_array = []
  # For every word; iterate through the dictionary to see if there is a match
  while i < word_array.length
    result_array[i] = word_array[i] if dict.include?(word_array[i])
    i += 1
  end
  # If there is a match; add one to a counter for that word
  # Return a hash containing all the results
  puts result_array.each_with_object(Hash.new(0)) { |word, acc| acc[word] += 1; }
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
