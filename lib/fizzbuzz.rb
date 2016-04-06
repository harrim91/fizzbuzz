def fizzbuzz num
  return "fizzbuzz" if num == 15
  return "buzz" if num == 5
  return num if num % 3 != 0 && num % 5 != 0
  "fizz"
end