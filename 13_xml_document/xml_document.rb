class XmlDocument
  def initialize(indent = false)
    @indent = indent
    @indent_level = 0
  end

  def method_missing(method, *args, &block)
    attributes = args[0] || {}
    doc = ''
    doc << ('  ' * @indent_level) if @indent
    doc << "<#{method}"
    attributes.each_pair do |key, value|
      doc << " #{key}='#{value}'"
    end
    if block
      doc << '>'
      doc << "\n" if @indent
      @indent_level += 1
      doc << yield 
      @indent_level -= 1
      doc << ('  ' * @indent_level) if @indent
      doc << "</#{method}>"
      doc << "\n" if @indent
    else
      doc << '/>'
      doc << "\n" if @indent
    end
    doc
  end
end
