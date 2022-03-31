require 'pry'

# Your class, Anagram, should take a word on 
# initialization; instances should respond to 
# a #match instance method that takes an array 
# of possible anagrams. It should return all 
# matches in an array. If no matches exist, 
# it should return an empty array.

class Anagram
    def initialize(word)
        @word = word
    end

    def match(array)
        sorted_word_arr = @word.chars.sort
        array.map do |arr_word| 
            arr_word if arr_word.chars.sort == sorted_word_arr
        end.compact
    end
end
