
class Box
    def initialize(length, width, height)
        @length     = length
        @width   = width
        @height = height
    end
    
    def surfaceArea
        return 2*(@length*@width + @width*@height + @height*@length)
    end
    
    def minSize
        return [@length*@width, @width*@height, @height*@length].min
    end
    
    def wrappingSize
        return surfaceArea + minSize
    end
end

#b = Box.new(1, 1, 10)
#puts b.wrappingSize

file = open(ARGV.first)
total = 0
file.read.split.each {|desc|
    l,b,h = desc.split('x')
    box = Box.new(l.to_i, b.to_i, h.to_i)
    total += box.wrappingSize
}
puts total
file.close()