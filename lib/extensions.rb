class Numeric #:nodoc:

  # return self as a percentage
  def percent
    self / 100.0
  end

end

class Fixnum #:nodoc:

  # return a string that of the specified length
  def pad length, value = 0
    str = self.to_s
    str = (value.to_s + str) while str.length < length
    str
  end

end

class String #:nodoc:

  # return a downcased string that has spaces replaced with underscores
  def fieldify
    self.downcase.gsub(' ', '_')
  end

end
