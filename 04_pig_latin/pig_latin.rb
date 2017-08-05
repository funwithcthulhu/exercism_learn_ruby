def translate1(word)
  array = word.split('')
  if q(array[0]) && u(array[1])
    fq = array.shift
    fu = array.shift
    array<<fq+fu+"ay"
  elsif vowels(array[0])
    array<<"ay"
  else
    fl = array.shift
    if q(array[0]) && u(array[1])
      fq = array.shift
      fu = array.shift
      array<<fl+fq+fu+"ay"
    elsif vowels(array[0])
      array<<fl+"ay"
    else
      nl = array.shift
      if vowels(array[0])
        array<<fl+nl+"ay"
      else
        tl = array.shift
        array<<fl+nl+tl+"ay"
      end
    end
  end
  array.join('')
end


def vowels(input)
  ["a", "e", "i", "o", "u", "y"].include?(input)
end

def q(input)
  ["q"].include?(input)
end

def u(input)
  ["u"].include?(input)
end

def translate(words)
  finalarray=[]
  if words.include?(' ')
    narray = words.split(' ')
    #good so far
    narray.each { |x| finalarray.push(translate1(x)) }
    return finalarray.join(" ")
  else
    return translate1(words)
  end
end
