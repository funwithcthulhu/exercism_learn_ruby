class Temperature

  attr_accessor :options

  def initialize(opts={})
    @options = opts
  end

  def in_fahrenheit
    if @options.has_key?(:c)
      if @options[:c] > 0 || @options[:c] < 0
        return ((@options[:c].to_f*9.0/5.0)+32.0)
      elsif @options[:c] == 0.0
        return 32.0
      end
    elsif @options.has_key?(:f)
      return @options[:f]
    end
  end

  def in_celsius
    if @options.has_key?(:f)
        return ((@options[:f]-32)*5/9)
    elsif @options.has_key?(:c)
      return @options[:c]
    end
  end

  def Temperature.from_celsius(n)
    Temperature.new(:c => n)
  end

  def Temperature.from_fahrenheit(n)
    Temperature.new(:f => n)
  end
end

class Celsius < Temperature
  def initialize(opts)
    @options = {:c => opts}
  end
end

class Fahrenheit < Temperature
  def initialize(opts)
    @options = {:f => opts}
  end
end
