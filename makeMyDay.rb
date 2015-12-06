#!/usr/bin/env ruby

if ARGV.count == 0
    puts """
    Usage: #{$0} DDD.
    Where DDD is a integer representing the day.
    Example: #{$0} 22
    """
    exit(0)
end

day = ARGV.first.to_i

if day == 0
    puts "Please enter a valid day, greater than 0."
    exit(0)
end

dirName = "Day#{day}"

if Dir.exist? dirName
    puts "#{dirName} already exists. Please recheck."
    exit(0)
end

Dir.mkdir(dirName)
file = File.new("#{dirName}/day#{day}.rb", File::CREAT|File::RDWR|File::TRUNC, 0744)
file.write("#!/usr/bin/env ruby\n")
file.close()

puts "All done."