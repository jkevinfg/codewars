# link = https://www.codewars.com/kata/5679aa472b8f57fb8c000047/train/ruby


def find_even_index(arr)
    return "An integer array of length 0 < arr< 1000" if (arr.size >= 1000 || arr.size == 0)
    min_index = -1
    arr.each_with_index do |element,index|
        return "The numbers in the array can be any integer positive or negative" unless element.is_a?Integer      
        index == 0 ? array_left = [] : array_left = arr[..index-1]
        array_right = arr[index+1..arr.size-1]
        if array_left.sum == array_right.sum
            min_index = index
            break
        end 
    end
    return min_index
end

print find_even_index([0,0,0,0,0])
