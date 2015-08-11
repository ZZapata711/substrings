def substrings(string, dictionary)
	container = Hash.new(0)
	
	string.downcase.split(/[^\w]+/).each do |word|
		dictionary.each do |substring|
			container[substring] += 1 if word[substring]
		end
	end
	puts container
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going partner?", dictionary)