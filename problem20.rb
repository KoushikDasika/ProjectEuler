#!/usr/env/bin ruby

product = 1
for i in 1..100
  product *= i
end

sum = 0
while product > 0
  sum += product % 10
  product /= 10
end

puts sum
