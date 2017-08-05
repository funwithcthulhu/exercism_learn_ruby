class Timer

  attr_reader :seconds
  attr_accessor :minutes
  attr_accessor :hours

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def seconds=(time)
    @seconds = time
  end

  def time_string
    #format hour:minute:second i.e. 00:00:00
    case
    when @seconds <= 59
      return "00:00:#{padded(@seconds)}"
    when @seconds >=60
      @minutes = @seconds/60
      @seconds = @seconds - (@minutes*60)
      if @minutes <60
        return "00:#{padded(@minutes)}:#{padded(@seconds)}"
      else
    #when @minutes >=60
        @hours = @minutes/60
        @minutes = @minutes - (@hours*60)
        return "#{padded(@hours)}:#{padded(@minutes)}:#{padded(@seconds)}"
      end
    else
        p "ERROR"
    end
  end

  private

  def padded(x)
    x<=9 ? "0"<<x.to_s : x.to_s
  end
end
