require 'pry-byebug'

def substrings(string, dictionary)
    dictionary.reduce({}) do |hash, substring|
        array_of_occurences = string.downcase.scan(/(?=#{substring})/)
        occurences = array_of_occurences.count
        if  occurences > 0
            hash[substring] = occurences
        end
        hash
    end
end




dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)