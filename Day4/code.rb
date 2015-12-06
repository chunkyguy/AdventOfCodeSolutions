require 'digest/md5'

def solve(secret)
    num = 1
    while Digest::MD5.hexdigest(secret + "#{num}")[0,5] != "00000"
        num = num + 1
    end
    return num
end

puts solve("iwrupvqb")