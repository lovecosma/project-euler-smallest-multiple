# Implement your object-oriented solution here!
class SmallestMultiple

    def initialize(input)
        @input = input
    end 
    
    def least_common_multiple(a, b)
        (a*b)/gcd(a, b)
    end 

    def gcd(a, b)
        until b == 0
            temp = b
            b = a % b
            a = temp
        end 
        a
    end 

    def lcm
        range = (1..@input).to_a
        multiple = 1
        range.each do |num|
            multiple = least_common_multiple(multiple, num)
        end 
        multiple
    end 


end 