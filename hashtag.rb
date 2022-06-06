def generateHashtag(str)
    return "method generateHashtag require string" unless str.is_a?String
    return false if str.delete(' ').size == 0
    array = str.split(' ')
    array.each_with_index do |element,index|
        array[index] = element.capitalize
    end
    str= "#" + array.join('')
    return false if str.size > 140
    return str
end

print generateHashtag("code" + " " * 140 + "wars")
