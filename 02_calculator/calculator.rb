def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array)
  sum = 0
  array.each do |val|
    sum = sum + val
  end
  sum
end

def multiply(*numbers)
  numbers.inject(1) { |product, number| product * number }
end

def power(num, exp)
  result = 1
  exp.times{ result = result * num}
  result
end

def factorial(num)
  if (num == 0)
    return 1
  end
  num * factorial(num-1)
end

