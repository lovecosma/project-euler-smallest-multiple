def smallest_multiple input
    range = (1..input).to_a
    multiple = 1

    range.each do |num|
        multiple = lcm(multiple, num)
    end 

    multiple
end

def lcm(a, b)
    a * b / gcd(a, b)
end 

def gcd(a, b)
    until b == 0
        temp = b
        b = a % b
        a = temp
    end 
    a
end 