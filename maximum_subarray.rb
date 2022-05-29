# link : https://www.codewars.com/kata/54521e9ec8e60bc4de000d6c/train/ruby

def max_sequence(arr)
    return 0 if arr.size == 0
    return "method max_sequence receives array" unless arr.is_a?Array
    max = 0
    for i in 0..arr.size-1
        return "array elements must be numbers" unless arr[i]
        for k in i..(arr.size-1)
            sum = arr[i..k].sum
            if sum > max
                max = sum
            end
        end
    end
    return max
end

print max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])
# 6 