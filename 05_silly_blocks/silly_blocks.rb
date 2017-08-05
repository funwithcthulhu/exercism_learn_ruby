
def reverser
  finalarray=[]
  if yield.include?(' ')
    y = yield.split(' ')
    y.each { |x| finalarray.push(x.reverse) }
    return finalarray.join(" ")
  else
    yield.reverse
  end
end

def adder(n=1)
  answer = yield + n
end

def repeater(n=1)
  for x in (1..n)
    yield
  end
end
