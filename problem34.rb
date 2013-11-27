def factorial(n)
  (1..n).reduce(:*) || 1
end

def digit_factorial(n)
  case n
  when 0
    1
  when 1
    1
  when 2
    2
  when 3
    6
  when 4
    24
  when 5
    120
  when 6
    720
  when 7
    5040
  when 8
    40320
  when 9
    362880
  end
end

def sumify_digits(n)
  sum = 0
  while n > 0
    digit = n % 10
    sum += digit_factorial(digit)
    n /= 10
  end
  sum
end

@sum = 0
(3..1000000).each do |i|
  if i == sumify_digits(i)
    puts i
    @sum += i
  end
end
puts @sum

