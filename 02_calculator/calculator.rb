def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  answer = 0
  if array.length > 0
    array.each do |x|
      answer = answer + x
    end
  end
  return answer
end

def multiply(*numbers)
  answer = 1
  if numbers.length == 0
    answer = 0
  elsif numbers.length == 2
    answer = numbers[0]*numbers[1]
  elsif numbers.length > 2
    numbers.each do |x|
      answer = answer * x
    end
  end
  return answer
end

def power(a, b)
  a**b
end

def factorial(n)
  answer = 0
  array =[]
  if n == 0
    return answer
  elsif n > 0
    (1..n).each do |x|
      array.push(x)
      return array
    end
    array.each do |x|
      answer = answer * x
    end
    return answer
  end
end
