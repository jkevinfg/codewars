# link : https://www.codewars.com/kata/526989a41034285187000de4/train/ruby


# [ ] [ ]
#siempre string 
# siempre el segundo mayor que el primero 

def ipsBetween(start, ending)
    return "All inputs will addresses in the form of strings." unless (start.is_a? String and ending.is_a?String)
    array = start.split(".")
    array2 = ending.split(".")
    index = 0 
    sum = 0
    for i in 0...array2.size
        if array2[i] != array
            index = i
            break
        end 
    end 
    for i in index...array2.size
        sum += (array2[i].to_i - array[i].to_i)*(256**((array2.size - 1 ) - i ))
    end 
    return sum
end


print ipsBetween(23, "10.0.0.50")

# (1*(256**1) - (0*(256**1) = 256 
# (0*(256**0) - (10*(256**0) = -10 

