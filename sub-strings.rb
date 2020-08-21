require "byebug"

def substrings(string, dictionary)
    str = {}
    split_string = string.downcase.split(" ")

    split_string.each do |split_word|
        dictionary.each do |word|
            if split_word.include?(word)
                str[word] ? str[word] += 1 : str[word] = 1
            end
        end
    end

    return str
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
answer = { 'below' => 1, 'low' => 1 }
puts "test 1: #{ substrings('below', dictionary) == answer }"

answer_2 = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
puts "test 2: #{ substrings("Howdy partner, sit down! How's it going?", dictionary) == answer_2 } "