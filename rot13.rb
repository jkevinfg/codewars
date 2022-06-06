#link = https://www.codewars.com/kata/530e15517bc88ac656000716/train/ruby

def rot13(string)
    alphabet = {
        "a" => "n",
        "b" => "o",
        "c" => "p",
        "d" => "q",
        "e" => "r",
        "f" => "s",
        "g" => "t",
        "h" => "u",
        "i" => "v",
        "j" => "w",
        "k" => "x",
        "l" => "y",
        "m" => "z",
    }
    return "method rot13 require string" unless string.is_a?String
    array = string.split('')
    array.each_with_index do |element,index|
        next if element == ' '
        if is_lower?(element)
            if alphabet.values.include?element
                index_hash = alphabet.values.index(element)
                array[index] = alphabet.keys[index_hash]
            else
                array[index] = alphabet[element]
            end
        elsif is_upcase?(element)
            if alphabet.values.include?element.downcase
                index_hash = alphabet.values.index(element.downcase)
                array[index] = alphabet.keys[index_hash].upcase
            else
                array[index] = alphabet[element.downcase].upcase
            end
        else
            array[index] = element
        end
    end
    puts string
    return array.join('')
end

def is_lower?(c)
    c != c.upcase
end

def is_upcase?(c)
    c != c.downcase
end


print rot13("Ruby is cool!")
