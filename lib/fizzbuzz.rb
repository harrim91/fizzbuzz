class Integer
  def fizzbuzz
    return "fizzbuzz" if self % 15 == 0
    return "buzz" if self % 5 == 0
    return "fizz" if self % 3 == 0
    self
  end
end
