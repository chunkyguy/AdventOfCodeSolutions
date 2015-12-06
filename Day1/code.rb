
def solve(input)
	floor = 0
	# iterate through each character of string
 	input.each_char do |ch|
		floor += 1 if ch == '(' 
		floor -= 1 if ch == ')'
 	end 
	return floor
end

# open a file
file = open(ARGV.first)
puts solve(file.read)
# close a file
file.close()