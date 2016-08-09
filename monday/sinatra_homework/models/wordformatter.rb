class WordFormatter

  def initialize (string)
    @string = string
  end

  def upcase()
    @string.upcase
  end

  def camel_case()
    # @string.split.map.with_index { |x,i| i == 0 ? x : x.capitalize  }.join
    new_word = string.split( ' ' ).map { |word| word.capitalize! }
    return new_word.join('')
  end



end