require "byebug"

def substrings(string, dictionary)
    str = {}

    dictionary.each do |word|
        if string.include?(word)
            hash = "#{word}"
            # byebug
            str[hash] ? str[hash] += 1 : str[hash] = 1
        end
    end

    return str
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
answer = { 'below' => 1, 'low' => 1 }
puts "test: #{ substrings('below', dictionary) == answer }"