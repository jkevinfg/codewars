#https://www.codewars.com/kata/5511b2f550906349a70004e1/train/ruby

# a y b dos enteros no negativos
# devuelva el ultimo digito no decimal de a´b
# 0'0 tome tome 1 


=begin 

2**0 = 1  3**0 = 1 .....17 * 0 = 1
2**1 = 2  3**1 = 3      17 .... = 17
2**2 = 4  3**2 = 9        .... ..9
2**3 = 8  3**3 = 27       .... ..3
2**4 = 16  3**4 = 81      .... ..1
2**5 = ..2   3**5 = ...3  .... ..7 
2**6 = ..4   3**6 = ...9  .... ..9
2**7 = ..8   3**7 = ...7  .... ..3
2**8 = ..6   .... = ...1   .. . 1
para 2 => g = 4    =
  
=end

def last_digit(n1,n2)
    return "method last_digit reciveid two non-negative integers" unless (n1.is_a?(Integer) && n1 >=0 && n2.is_a?(Integer) &&  n2 >=0)
    last_number = 0
    return last_number+1 if ((n1 == 0 && n2==0) || n2==0)
    if !(n1 == 0)
        array = []    
        index = (n2%4) - 1 
        for i in 1..4
            array[i-1] = n1**i
        end 
        result = array[index]
        last_number = result.digits[0]
        return last_number
    end
    return last_number
end

print last_digit(1234546,0)
