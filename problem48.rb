#!/usr/env/bin ruby


sum = 0
for i in (1..1000)
  sum += i**i
end

remainder = sum % 10**10
puts remainder
