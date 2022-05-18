#https://www.codewars.com/kata/5259acb16021e9d8a60010af/train/ruby

def lcm(*numbers) 
    return 1 if numbers.size == 0
    result = numbers[0]
    return 0 if result == 0
    for i in 1..(numbers.size - 1)
        return "Error : argument is non-negative integer"  unless ( numbers[i].is_a?(Integer) && numbers[i] >= 0)
        result = (numbers[i]*result)/ gcd(numbers[i],result)
    end
    return result
end

def gcd(a,b)
    return a if b == 0
    return gcd(b,a%b)
end 

print lcm(5,0)
