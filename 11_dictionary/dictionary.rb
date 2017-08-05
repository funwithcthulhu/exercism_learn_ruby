class Dictionary

  attr_accessor :entries

  def initialize(optional={})
    @entries= optional
  end

  def entries
    return @entries
  end

  def add(hash_values)
    if hash_values.is_a? String
      @entries[hash_values] = nil
    else
      @entries.merge! hash_values
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    @entries.has_key? key
  end

  def find(key)
    @entries.select do |k, value|
      k.include? key
    end
  end

  def printable
    answer = @entries.sort.map do |key,value|
	             "[#{key}] \"#{value}\""
             end
    answer.join("\n")
  end

end
