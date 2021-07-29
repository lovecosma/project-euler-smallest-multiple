# Implement your procedural solution here!
def smallest_multiple(input)
   lcmm(1, input)
end 


def gcd(a, b)
    until b == 0
        temp = b
        b  = a % b
        a = temp
    end 
    return a
end 

def lcm(a, b)
    return (a * b / gcd(a, b));
end 

def lcmm(min, max)
    range = (min..max).to_a

    multiple = min
    
    range.each do |num|
        multiple = lcm(multiple, num)
    end 
    
    multiple
end 
