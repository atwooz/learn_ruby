#write your code here
def add(one, two)
  one + two
end

def subtract(one, two)
  one - two
end

def sum(values)
  sum = 0
  values.each do |value|
    sum += value
  end
  sum
end

def multiply(values)
  product = 1
  values.each do |value|
    product *= value
  end
  product
end

def power(root, pow)
  product = multiply(Array.new(pow, root))
end

def factorial(num)
  product = multiply([*1..num])
end
