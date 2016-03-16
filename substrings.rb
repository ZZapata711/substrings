class Substring
	attr_accessor :string, :dictionary, :container
	
	def initialize(string, dictionary)
		@string = string.downcase.split(/[^\w]+/)
		@dictionary = dictionary.downcase.split(/[^\w]+/)
		@container = Hash.new(0)
	end
	
	def check
		@string.each do |word|
			@dictionary.each do |substring|
				@container[substring] += 1 if word[substring]
			end
		end
		puts @container
	end
end

print "Input sentence to be checked, with each word separated by a space: "
string = gets.chomp
print "List of words to be included in dictionary, with each word separated by a space: " 
dictionary = gets.chomp

substring = Substring.new(string, dictionary)
substring.check
