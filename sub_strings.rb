# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
# Get the word(s) and the array of substrings from the user
def substrings(words, dict)
  i = 0
  word_array = words.downcase.split(' ').join
  puts word_array
  # puts word_array[0]
  # puts word_array[1]
  result_array = []
  # For every word; iterate through the dictionary to see if there is a match
  while i < word_array.length
    unless dict[i].nil?
      result_array[i] = dict[i] if word_array.include?(dict[i])
    end
    puts 'hey'
    i += 1
  end
  result_array.compact!
  # If there is a match; add one to a counter for that word
  # Return a hash containing all the results
  puts result_array
  puts result_array.each_with_object(Hash.new(0)) { |word, acc| acc[word] += 1; }
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
