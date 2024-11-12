def substrings(string, dictionary)
  found_strings =
    dictionary.select do |str|
      string.include?(str)
    end
  
  count = found_strings.reduce(Hash.new(0)) do |result, str|
    cnt = string.scan(str).count
    next if cnt == 0
    result[str] = cnt
    result
  end
  p count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)