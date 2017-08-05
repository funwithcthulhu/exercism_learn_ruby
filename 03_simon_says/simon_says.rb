def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, b = 2)
  reput = input
  if b == 2
    b.times {|x| reput = input + " #{input}"}
  elsif b > 2
    c = b-1
    c.times { |x| reput = reput + " #{input}"}
  end
  return reput
end

def start_of_word(word, n)
  word.split('').shift(n).join('')
end

def first_word(words, n=1)
  words.split(' ').shift(n).join(' ')
end

def titleize(word)
  array = word.split(' ')
  narray = []
  array.each do |x|
    little(x) ? narray.push(x) : narray.push(x.capitalize)
  end
  narray[0].capitalize!
  narray.join(' ')
end


def little(word)
  ["and", "or", "of", "in", "a", "the", "over"].include?(word)
end

# above code block in titleize refactored from:
#if little(x)==false
#  narray.push(x.capitalize)
#elsif little(x)==true
#  narray.push(x)
#end
