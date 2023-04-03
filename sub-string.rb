#enter a string and an array (dictionary) of valid substrings
def substring(string, dictionary)
  #each word as element in array downcase
  strings = string.downcase.split(" ")

  substrings = []

  #iterating through both strings and dictionary
  strings.each do |string|
    dictionary.each do |word|
     #seeing if the string includes valid substring  in dictionary
      if string.include?("#{word}")
        substrings << word
      end
    end
  end

  #creating a new hash the contains the counts for each valid substring
  counts = substrings.reduce(Hash.new(0)) do |count, word|
    count[word] += 1
    count
  end
 return counts
end
