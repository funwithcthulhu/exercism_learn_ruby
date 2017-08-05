class Book
  attr_accessor :y
  attr_accessor :title
  attr_accessor :a

  def title
    @y=[]
    if @title.include?(" ")
      var = @title.split(" ")
      var.each do |x|
        little_words(x) ? @y.push(x) : @y.push(x.capitalize)
      end
      @a= @y.shift
      @y.unshift(@a.capitalize)
      @y.join(' ')
    else
      return @title.capitalize
    end
  end
  def little_words(str)
    ["and", "or", "the", "of", "nor", "for", "yet", "so",
     "but", "in", "by", "a", "an"].include?(str)
  end
end
