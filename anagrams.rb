#https://www.codewars.com/kata/523a86aa4230ebb5420001e1/train/ruby

def anagrams(word, words)
    return "method anagrams recibed string and array" unless word.is_a?String and words.is_a?Array 
    array = [ ]
    words.each do |element| 
        array.push(element) if anagrams_verify(word,element)
    end
    return array
end

def anagrams_verify(string,string2)
    return "arguments not string" unless string.is_a?String and string2.is_a?String  
    result = false
    return result if string.size != string2.size
    arr = sort_and_delete(string)
    arr2 = sort_and_delete(string2)
    result =  (arr == arr2)
    return result
end 

def sort_and_delete(string)
    value = ''
    arr = string.split('').sort.select do |x|
        value = x if value != x
    end
    return arr
end 

print anagrams(['aabb', 'abcd', 'bbaa', 'dada'], ['aabb', 'abcd', 'bbaa', 'dada'])