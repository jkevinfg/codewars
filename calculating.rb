=begin
Link : https://www.codewars.com/kata/525f3eda17c7cd9f9e000b39/train/ruby

seven(times(five)) # must return 35
four(plus(nine)) # must return 13
eight(minus(three)) # must return 5
six(divided_by(two)) # must return 3
=end

def expression(value,operation)
    if operation != ''
        return operation.call(value)
    end
    return value
end

def zero(operation='')
    return expression(0,operation)
end
def one(operation='')
    return expression(1,operation)
end
def two(operation='')
    return expression(2,operation)
end
def three(operation='')
    return expression(3,operation)
end
def four(operation='')
    return expression(4,operation)
end
def five(operation='')
    return expression(5,operation)
end
def six(operation='')
    return expression(6,operation)
end
def seven(operation='')
    return expression(7,operation)
end
def eight(operation='')
    return expression(8,operation)
end
def nine(operation='')
    return expression(9,operation)
end

def plus(value)
    proc {|x| x + value}
end

def minus(value)
    proc {|x| x - value}
end
def times(value)
    proc {|x| x*value}
end
def divided_by(value)
    proc {|x| x/value}
end

print six(divided_by(two()))