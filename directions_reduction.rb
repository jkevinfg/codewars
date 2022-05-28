# link = https://www.codewars.com/kata/550f22f4d758534c1100025a/train/ruby

# NORT SOUTH EAST WEST  

def dirReduc(arr)
  return "diReduc method recibed argument array" unless arr.is_a?Array
  hash = {'NORTH' =>  'SOUTH', 'EAST' => 'WEST', 'SOUTH' =>  'NORTH', 'WEST' => 'EAST'}
  new_array = []
  arr.each_with_index do |element,index|
    return "element in array not string" unless element.is_a?String 
    if hash[element] == new_array[-1]
        new_array.pop()
    else
        new_array.push(element)
    end
  end 

  new_array 
end

print dirReduc(["NORTH", "SOUTH",4, "EAST", "WEST", "NORTH", "WEST"])