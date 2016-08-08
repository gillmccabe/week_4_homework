class WordFormatter

  def initialize (string)
    @string = string
  end

  def upcase()
    @string.upcase
  end

  def camel_case()
    @string.split.map.with_index { |x,i| i == 0 ? x : x.capitalize  }.join
  end



end