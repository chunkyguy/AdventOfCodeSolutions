
def isNice(s)
    # doesn't contains any of these strings
    ["ab", "cd", "pq", "xy"].each { |invalid| return false if s.include? invalid }
    
    # build table
    table = Hash.new(0)
    s.each_char do |ch|
        table[ch] += 1
    end

    # has at least 2 vowels
    return false if ["a", "e", "i", "o", "u"].inject(0) {|sum, v| sum + table[v] } < 3
    
    # no double consecutive chars
    return s.squeeze != s
end

file = open(ARGV.first)
puts file.read.split.inject(0) {|s, w| s + (isNice(w) ? 1 : 0)}
file.close()

