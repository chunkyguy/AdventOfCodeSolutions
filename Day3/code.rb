class Node
    attr_reader :x, :y
    def initialize(x,y)
        @x = x
        @y = y
    end
    
    def up
        return Node.new(self.x, self.y+1)
    end
    
    def right
        return Node.new(self.x+1, self.y)
    end
    
    def down
        return Node.new(self.x, self.y-1)
    end
    
    def left
        return Node.new(self.x-1, self.y)
    end
    
    def ==(other)
        (self.x == other.x) && (self.y == other.y)
    end
end

def solve(route)
    nodes = [Node.new(0,0)]
    route.each_char do |ch|
        nodes.push(nodes.last.up) if ch == '^'
        nodes.push(nodes.last.right) if ch == '>'
        nodes.push(nodes.last.down) if ch == 'v'
        nodes.push(nodes.last.left) if ch == '<'
    end

    filterNodes = []
    nodes.each {|n| filterNodes.push(n) if !filterNodes.include?(n) }
    puts filterNodes.length
end

file = open(ARGV.first)
solve(file.read)
file.close()