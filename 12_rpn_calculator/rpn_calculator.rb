class RPNCalculator

  attr_accessor :stack

  def initialize(stack = [])
    @stack = stack
  end

  def push(nums)
    @stack.push nums
  end

  def plus
    if @stack.count < 2
      raise "calculator is empty"
    else
      last = @stack.pop
      second_to_last = @stack.pop
      added = last + second_to_last
      @stack.push added
    end
  end

  def minus
    if @stack.count < 2
      raise "calculator is empty"
    else
      last = @stack.pop
      second_to_last = @stack.pop
      subtracted = second_to_last - last
      @stack.push subtracted
    end
  end

  def divide
    if @stack.count < 2
      raise "calculator is empty"
    else
      last = @stack.pop
      second_to_last = @stack.pop
      divided = second_to_last.to_f / last.to_f
      @stack.push divided
    end
  end

  def times
    if @stack.count < 2
      raise "calculator is empty"
    else
      last = @stack.pop
      second_to_last = @stack.pop
      multiplied = second_to_last.to_f * last.to_f
      @stack.push multiplied
    end
  end

  def tokens(string)
    string.split(' ').each do |value|
      case
      when value == "*"
        @stack.push(:*)
      when value == "/"
        @stack.push(:/)
      when value == "+"
        @stack.push(:+)
      when value == "-"
        @stack.push(:-)
      else
        @stack.push value.to_i
      end
    end
    @stack
  end

  def evaluate(string)
    @stack = []
    string.split(' ').each do |value|
      case
      when value == "*"
        times
      when value == "/"
        divide
      when value == "+"
        plus
      when value == "-"
        minus
      else
        @stack.push value.to_i
      end
    end
    if string.include? '/'
      @stack.join.to_f
    else
      @stack.join.to_i
    end
  end

  def value
    @stack.last
  end

end
