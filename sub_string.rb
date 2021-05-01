def substrings(target, dictionary)
  h_result = Hash.new
  for word in dictionary
    h_result[word] = target.downcase.scan(/#{word}/).length
  end
  h_result.select {|key, value| value > 0}
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
#=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }