dictionary = ["below", "down", "go", "going", "horn", "how", "howdy",
 	"it", "i", "low", "own", "part", "partner", "sit"]

def substrings (str, dic)
	results = {}
	str = str.split(' ')
	str.each do |word|
		dic.each do |defined|
			if word.include? defined
				if results[defined] == nil
					results[defined] = 0
				end
				results[defined] += 1
			end
		end
	end
	results
end

puts "Enter some text and find out the frequency of each word:"
a = gets.chomp
b = substrings(a, dictionary)
puts b

