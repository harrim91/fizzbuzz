def fizzbuzz num
  return "fizzbuzz" if num == 15
  return "buzz" if num % 5 == 0
  return "fizz" if num % 3 == 0
  num
end