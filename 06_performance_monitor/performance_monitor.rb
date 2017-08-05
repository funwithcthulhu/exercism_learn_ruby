def measure(n=1)
  a=[]
  sum = 0
  for x in (1..n)
    initial = Time.now
    yield
    after = Time.now
    total = (after - initial)
    a.push(total)
  end
  a.each { |x| sum= sum+(x.to_f) }
  sum == 0 ? (0.0) : sum.to_f/n.to_f
end
