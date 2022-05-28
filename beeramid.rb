# link : https://www.codewars.com/kata/51e04f6b544cf3f6550000c1/train/ruby

def beeramid(bonus,price)
    nivel = 0
    return nivel if (bonus < 0 && price < 0)
    cant_beer = (bonus/price).to_i
    while true
        nivel += 1 
        sum =  (nivel *(nivel+1)*(2*nivel+1))/6
        if cant_beer < sum 
            nivel = nivel-1        
            break
        end 
    end
    return nivel
end


print beeramid(1500, 2)